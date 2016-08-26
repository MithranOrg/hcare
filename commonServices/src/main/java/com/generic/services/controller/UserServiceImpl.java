package com.generic.services.controller;

import com.google.gson.Gson;
import com.nura.db.entity.UserDetails;
import com.nura.db.handler.UserDetailsDAOImpl;
import constants.ResponseFormat;
import java.util.Properties;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(constants.ServiceURLConstants.USER_SERVICE)
public class UserServiceImpl implements constants.ServiceURLConstants {

    private UserDetailsDAOImpl _usrDtlsDAOImpl = new UserDetailsDAOImpl();
    private ResponseFormat _resp = new ResponseFormat();
    private Gson _gson = new Gson();

    @RequestMapping(value = VALIDATE_USER_URL, method = RequestMethod.POST, produces = "application/json",
            consumes = {"application/json", "application/xml"})
    public @ResponseBody
    boolean validateUser(@RequestBody String data) {
        boolean vaidUser = false;
        try {
            System.out.println("Data " + data);
            //String json = gson.toJson(data);
            Gson gson = new Gson();
            Properties prop = gson.fromJson(data, Properties.class);
            String name = prop.getProperty("name");
            String pwd = prop.getProperty("pwd");
            UserDetailsDAOImpl _uImp = new UserDetailsDAOImpl();
            UserDetails _ud = _uImp.validateUser(name, pwd);
            if (_ud != null) {
                System.out.println("If condition");
                vaidUser = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return vaidUser;
    }

    @RequestMapping(value = constants.ServiceURLConstants.ADD, method = RequestMethod.POST, produces = "application/json",
            consumes = {"application/json", "application/xml"})
    public @ResponseBody
    String userRegistration(@RequestBody String data) {
        try {
            System.out.println("Data " + data);
            //String json = gson.toJson(data);
            Gson gson = new Gson();
            com.nura.db.entity.UserDetails _usrDtls = gson.fromJson(data, com.nura.db.entity.UserDetails.class);
            boolean userExist = _usrDtlsDAOImpl.userExist(_usrDtls.getMailid());
            if (userExist) {
                _resp.setResp_code(-1);
                _resp.setResp_msg("User alread exist");
            } else {
                boolean userSaved = _usrDtlsDAOImpl.isSaved(_usrDtls);
                if (userSaved) {
                     _resp.setResp_code(100);
                    _resp.setResp_msg("User Saved successfully");
                } else {
                    _resp.setResp_code(-1);
                    _resp.setResp_msg("Contact admin internal server error");
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return _gson.toJson(_resp);
    }
}
