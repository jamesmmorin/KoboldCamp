/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.koboldcamp.dao;

import com.swcguild.koboldcamp.model.Asset;
import com.swcguild.koboldcamp.model.Record;
import com.swcguild.koboldcamp.model.User;
import java.util.List;

/**
 *
 * @author apprentice
 */
public interface DAO {

    public Asset addAsset(Asset asset);

    public void deleteAsset(int assetId);

    public List<Asset> getAllAssets();
    
    public List<Record> assetRentalHistory(int id);

//    public List<Asset> searchAsset(Map<SearchTerm, String> criteria);
    
    public Record assetRecordUpdate(Record record);
    
    public List<User> getAllUsers();

    public User addUser(User newUser);

    public void editUser(User user);

//    public List<Asset> searchAsset(Map<SearchTerm, String> criteria);
    
    public void disableUser(int userId);
    
    public void enableUser(int userId);
    
    public void resetPassword(int id);
    
    public void updatePassword(User user);
    
    public int getUserId(String username);

}
