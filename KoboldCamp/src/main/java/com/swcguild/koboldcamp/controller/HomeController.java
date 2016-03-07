/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.koboldcamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author apprentice
 */
@Controller
public class HomeController {

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String displayHomePage() {
        return "index";
    }

    @RequestMapping(value = {"/asset"}, method = RequestMethod.GET)
    public String displayAssetPage() {
        return "asset";
    }

    @RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
    public String displayAdminPage() {
        return "admin";
    }

    @RequestMapping(value = {"/members"}, method = RequestMethod.GET)
    public String displayMembersPage() {
        return "members";
    }

    @RequestMapping(value = {"/profile"}, method = RequestMethod.GET)
    public String displayProfilePage() {
        return "profile";
    }

    @RequestMapping(value = {"/rentals"}, method = RequestMethod.GET)
    public String displayRentalsPage() {
        return "rentals";
    }
    
    @RequestMapping(value = {"/mainAjaxPage"}, method = RequestMethod.GET)
    public String displayMainAjaxPage() {
        return "mainAjaxPage";
    }

}
