/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.google.gson.Gson;
import com.nura.db.entity.UserDetails;

/**
 *
 * @author ArunRamya
 */
public class TestClass {
    
    public static void main(String[] args) {
        UserDetails _uEntity = new UserDetails();
        _uEntity.setAddress("chennai");
        Gson gson = new Gson();
        System.out.println(gson.toJson(_uEntity));
    }
}
