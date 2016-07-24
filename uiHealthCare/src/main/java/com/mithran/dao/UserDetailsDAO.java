/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mithran.dao;

import java.util.List;

/**
 *
 * @author ArunRamya
 */
public interface UserDetailsDAO {

    public boolean saveUserDetails(com.mithran.entity.user.UserDetails userDtls);

    public boolean validateUserBsdOnMailId(String emailId, String password);

    public boolean passwordChange(String emailId);

    public com.mithran.entity.user.UserDetails getUserDtlsBsdOnLoginId(String emailId);

    public List<com.mithran.entity.user.UserDetails> getUserDetailList(String emailId);

    public com.mithran.entity.user.UserDetails getUserDtls(String emailId, String password);

    public com.mithran.entity.user.UserDetails getUserDetailListByPhone(String aContactNumber);
    
    public com.mithran.entity.user.UserDetails getUserDtlsBsdOnUserSeq(Long userId); 

}
