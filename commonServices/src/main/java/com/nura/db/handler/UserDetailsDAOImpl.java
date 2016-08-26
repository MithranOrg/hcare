/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nura.db.handler;

import com.nura.db.entity.UserDetails;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Arun
 */
public class UserDetailsDAOImpl {

    private Session session = null;
    private Transaction tx = null;

    public boolean isSaved(UserDetails ud) {
        boolean saved = false;
        UserDetailsDAOImpl _usrDtlsImpl = new UserDetailsDAOImpl();
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
                 session.save(ud);
                tx.commit();
                session.flush();
                saved = true;
        } catch (HibernateException hbe) {
            hbe.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return saved;
    }

    public boolean userExist(String emailId) {
        boolean userExist = false;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            String hql = "From UserDetails where mailid =:mailid";
            Query query = session.createQuery(hql);
            query.setParameter("mailid", emailId);
            if (query.list().size() > 0) {
                userExist = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return userExist;
    }

    public UserDetails validateUser(String userName, String pwd) {
        UserDetails _userDtls = null;
        Session session = null;
        Transaction transaction = null;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            String hql = "from UserDetails where userid =:userid and password =:pwd";
            Query query = session.createQuery(hql);
            query.setParameter("userid", userName);
            query.setParameter("pwd", pwd);
            if (query.list().size() > 0) {
                _userDtls = (UserDetails) query.list().get(0);
            }
            session.flush();
            transaction.commit();
        } catch (HibernateException hex) {
            hex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return _userDtls;
    }

}
