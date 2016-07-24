/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mithran.dao.impl;

import com.mithran.dao.UserDetailsDAO;
import com.mithran.entity.pet.PetProfileDetails;
import com.mithran.entity.user.UserDetails;
import com.mithran.utility.DynamicPasswordCreator;
import java.util.List;
import java.util.Set;
import javax.persistence.Query;
import javax.transaction.Transaction;
import javax.websocket.Session;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author ArunRamya
 */
public class UserDetailsDAOImpl implements UserDetailsDAO {

    private Session session;
    private Transaction tx;

    @Override
    public boolean passwordChange(String emailId) {
        boolean emailUpdated = false;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            String hql = "From UserDetails where primaryMailId =:primaryMailId";
            Query query = session.createQuery(hql);
            query.setParameter("primaryMailId", emailId);
            System.out.println(emailId);
            UserDetails _userDtls = (UserDetails) query.list().get(0);
            _userDtls.setUserPassword(new DynamicPasswordCreator().nextSessionId().substring(20));
            session.saveOrUpdate(_userDtls);
            tx.commit();
            emailUpdated = true;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return emailUpdated;
    }

    @Override
    public com.mithran.entity.user.UserDetails getUserDtls(String emailId, String password) {
        com.mithran.entity.user.UserDetails userDtls = null;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            String hql = "From UserDetails where primaryMailId =:primaryMailId and userPassword =:userPassword";
            Query query = session.createQuery(hql);
            query.setParameter("primaryMailId", emailId);
            query.setParameter("userPassword", password);
            if (query.list().size() > 0) {
                userDtls = (UserDetails) query.list().get(0);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return userDtls;
    }

    @Override
    public boolean validateUserBsdOnMailId(String emailId, String password) {
        boolean validUser = false;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            String hql = "From UserDetails where primaryMailId =:primaryMailId and userPassword =:userPassword";
            Query query = session.createQuery(hql);
            query.setParameter("primaryMailId", emailId);
            query.setParameter("userPassword", password);
            if (query.list().size() > 0) {
                validUser = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return validUser;
    }

    @Override
    public boolean saveUserDetails(UserDetails userDtls) {
        boolean isSaved = false;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(userDtls);
            session.flush();
            tx.commit();
            isSaved = true;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return isSaved;
    }

    @Override
    public List<UserDetails> getUserDetailList(String aPrimaryMailId) {
        List<UserDetails> userDetailList = null;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            String hql = "From com.mithran.entity.user.UserDetails where lower(primaryMailId) =:primaryMailId ";
            Query query = session.createQuery(hql);
            query.setParameter("primaryMailId", aPrimaryMailId.toLowerCase());
            userDetailList = query.list();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return userDetailList;
    }

    @Override
    public UserDetails getUserDetailListByPhone(String aContactNumber) {
        UserDetails userDetailObj = null;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            String hql = "From com.mithran.entity.user.UserDetails where (primaryContactNumber =:primaryContactNumber )"
                    + " or ( secondaryContactNumber =:primaryContactNumber ) ";
            Query query = session.createQuery(hql);
            query.setParameter("primaryContactNumber", aContactNumber);

            if (query.list().size() > 0) {
                userDetailObj = (UserDetails) query.list().get(0);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return userDetailObj;
    }

    @Override
    public com.mithran.entity.user.UserDetails getUserDtlsBsdOnLoginId(String emailId) {
        com.mithran.entity.user.UserDetails userDtls = null;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            String hql = "From UserDetails where primaryMailId =:primaryMailId";
            Query query = session.createQuery(hql);
            query.setParameter("primaryMailId", emailId);
            if (query.list().size() > 0) {
                userDtls = (UserDetails) query.list().get(0);
                System.out.println("Value fetched from DB");
            } else {
                System.out.println("No value returned from DB");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return userDtls;
    }

    @Override
    public com.mithran.entity.user.UserDetails getUserDtlsBsdOnUserSeq(Long userId) {
        com.mithran.entity.user.UserDetails userDtls = null;
        try {
            session = hibernateutil.HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            String hql = "From UserDetails where userSeq =:userId";
            Query query = session.createQuery(hql);
            query.setParameter("userId", userId);
            if (query.list().size() > 0) {
                userDtls = (UserDetails) query.list().get(0);
                System.out.println("Value fetched from DB");
            } else {
                System.out.println("No value returned from DB");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return userDtls;
    }

    public static void main(String args[]) {
        UserDetails userDtls = new UserDetailsDAOImpl().getUserDtls("mani@gmail.com", "Mani#123");
        Set<PetProfileDetails> prSet = userDtls.getPetDtls();
        for (PetProfileDetails pd : prSet) {
            System.out.println(pd.getPetName());
        }
    }
}
