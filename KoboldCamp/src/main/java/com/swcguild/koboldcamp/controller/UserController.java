/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.koboldcamp.controller;

import com.swcguild.koboldcamp.dao.DAO;
import com.swcguild.koboldcamp.model.User;
import java.util.List;
import javax.inject.Inject;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class UserController {

    private DAO dao;

    @Inject
    public void userController(DAO dao) {
        this.dao = dao;
    }

    @RequestMapping(value = "/user", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.CREATED)
    @ResponseBody
    public User addUser(@RequestBody User user) {
        dao.addUser(user);
        return user;
    }

    @RequestMapping(value = "/displayMemberList", method = RequestMethod.GET)
    @ResponseBody
    public List<User> getAllUsers() {
        List<User> user = dao.getAllUsers();
        return user;
    }

    @RequestMapping(value = "/userDisable/{id}", method = RequestMethod.DELETE)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void disableUser(@PathVariable("id") int id) {
        dao.disableUser(id);
    }

    @RequestMapping(value = "/userEnable/{id}", method = RequestMethod.DELETE)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void enableUser(@PathVariable("id") int id) {
        dao.enableUser(id);
    }

    @RequestMapping(value = "/userEdit/{id}", method = RequestMethod.PUT)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void editUser(@PathVariable("id") int id, @RequestBody User user) {
        user.setUser_id(id);
        dao.editUser(user);
    }

    @RequestMapping(value = "/resetPassword/{id}", method = RequestMethod.PUT)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void resetPassword(@PathVariable("id") int id) {
        dao.resetPassword(id);
    }

    @RequestMapping(value = "/updatePassword", method = RequestMethod.PUT)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void updatePassword(@RequestBody User user) {
        dao.updatePassword(user);
    }
    
    @RequestMapping(value = "/getUserId/{username}", method = RequestMethod.PUT)
    @ResponseBody
    public int getUserId(@PathVariable("username") String username) {
        int id = dao.getUserId(username);
        
        return id;
    }

}
