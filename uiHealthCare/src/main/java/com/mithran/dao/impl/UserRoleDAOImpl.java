/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mithran.dao.impl;

import com.mithran.dao.UserRoleDAO;
import com.mithran.entity.user.UserRole;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author ArunRamya
 */
public class UserRoleDAOImpl implements UserRoleDAO {

    private Session session;
    private Transaction tx;

    @Override
    public boolean saveUserRole(UserRole _userRole) {
        boolean saved = false;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(_userRole);
            session.flush();
            tx.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return saved;
    }

}
