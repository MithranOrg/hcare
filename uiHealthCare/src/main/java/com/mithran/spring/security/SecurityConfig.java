/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mithran.spring.security;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author ArunRamya
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    DataSource dataSource;

    @Bean(name = "dataSource")
    public DriverManagerDataSource dataSource() {
        DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
        driverManagerDataSource.setDriverClassName("com.mysql.jdbc.Driver");
        driverManagerDataSource.setUrl("jdbc:mysql://localhost:3306/veterinary");
        driverManagerDataSource.setUsername("root");
        driverManagerDataSource.setPassword("admin");
        return driverManagerDataSource;
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select primary_mail_id_var,password_var, user_status from pr_user_profile "
                        + "where primary_mail_id_var=?")
                .authoritiesByUsernameQuery(
                        "select user_role_id,role from pr_user_roles where user_role_id = "
                        + "(SELECT user_id_num FROM pr_user_profile where primary_mail_id_var = ?)");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http
                .authorizeRequests()
                .antMatchers("/resources/**", "/img_src/**",
                        "/global/**").permitAll().anyRequest().authenticated()
                .antMatchers("/secured/*").hasAnyRole("USER", "ADMIN")
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .successHandler(new MYSuccessHandler())
                .loginPage("/loginPage.jsp").failureUrl("/loginPage.jsp?error")
                .usernameParameter("username").passwordParameter("password")
                .permitAll()
                .and().exceptionHandling().accessDeniedPage("/loginPage.jsp?error")
                .and()
                .httpBasic()
                .and()
                .logout().logoutSuccessUrl("/loginPage.jsp?logout")
                .invalidateHttpSession(true)
                .and()
                .csrf()
                .disable();
    }

}
