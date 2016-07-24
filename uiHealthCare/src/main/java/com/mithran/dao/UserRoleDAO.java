/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mithran.dao;

import com.mithran.entity.user.UserRole;

/**
 *
 * @author ArunRamya
 */
public interface UserRoleDAO {
    
    public boolean saveUserRole(UserRole _userRole);
        
}
