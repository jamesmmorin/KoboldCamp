/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.koboldcamp.controller;

import com.swcguild.koboldcamp.dao.DAO;
import com.swcguild.koboldcamp.model.Asset;
import com.swcguild.koboldcamp.model.Record;
import java.util.List;
import javax.inject.Inject;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author apprentice
 */
@Controller
public class AssetController {

    private DAO dao;

    @Inject
    public void assetController(DAO dao) {
        this.dao = dao;
    }

    @RequestMapping(value = "/displayAssetList", method = RequestMethod.GET)
    @ResponseBody
    public List<Asset> getAllAsset() {
        List<Asset> assets = dao.getAllAssets();
        return assets;
    }

    @RequestMapping(value = "/asset/{id}", method = RequestMethod.GET)
    public String assetRentalHistory(@PathVariable("id") int id, Model model) {
        List<Record> records = dao.assetRentalHistory(id);
        model.addAttribute("records", records);
        return "1001";
    }
   

    @RequestMapping(value = "/asset", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.CREATED)
    @ResponseBody
    public Asset addAsset(@RequestBody Asset asset) {
        dao.addAsset(asset);
        return asset;
    }

//    @RequestMapping(value = "/assetStatusUpdate", method = RequestMethod.POST)
//    @ResponseStatus(HttpStatus.CREATED)
//    @ResponseBody
//    public Asset assetStatusUpdate(@RequestBody Asset asset) {
//        dao.assetStatusUpdate(asset);
//        return asset;
//    }
    @RequestMapping(value = "/assetDelete/{id}", method = RequestMethod.DELETE)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteAsset(@PathVariable("id") int id) {
        dao.deleteAsset(id);
    }

    @RequestMapping(value = "/assetRecordUpdate", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.CREATED)
    @ResponseBody
    public Record assetRecordUpdate(@RequestBody Record record) {
        dao.assetRecordUpdate(record);
        return record;
    }

}
