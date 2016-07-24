/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mithran.spring.security;

import com.mithran.dao.impl.UserDetailsDAOImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

/**
 *
 * @author ArunRamya
 */
public class MYSuccessHandler implements AuthenticationSuccessHandler {

    private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication a) throws IOException, ServletException {
        /**
         * Set session values
         */
        HttpSession session = req.getSession();
        UserDetailsDAOImpl _uDAOImpl = new UserDetailsDAOImpl();
        org.springframework.security.core.userdetails.User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println("User name selected:-" + user.getUsername());
        System.out.println("User pwd:-" + user.getPassword());
        com.mithran.entity.user.UserDetails _userDtls = _uDAOImpl.getUserDtlsBsdOnLoginId(user.getUsername());
        _userDtls.setUserPassword("");
        session.setAttribute(constants.Constants.USR_DTLS_OBJ, _userDtls);
        System.out.println("Session values set after authentication and redirecting to home page");
        /**
         * Redrecting page
         */
        redirectStrategy.sendRedirect(req, resp, "/secured/homePage.jsp");
    }
}
