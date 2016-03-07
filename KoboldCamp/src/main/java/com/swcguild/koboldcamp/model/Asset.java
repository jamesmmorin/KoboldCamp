/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.koboldcamp.model;

import java.util.Objects;

/**
 *
 * @author apprentice
 */
public class Asset {
    
    public int asset_id;
    public String category;
    public int category_id;
    public String name;
    public String brand;
    public String description;
    public int status_id;
    public String status;
    public String first_name;
    public String last_name;
    public int employee_id;
    public int member_id;
    public String note;
    public String record_date;

    public Asset(int asset_id, int category_id, String name, String brand, String description, int status_id, String status, String first_name, String last_name, int employee_id, int member_id, String note, String record_date) {
        this.asset_id = asset_id;
        this.category_id = category_id;
        this.name = name;
        this.brand = brand;
        this.description = description;
        this.status_id = status_id;
        this.status = status;
        this.first_name = first_name;
        this.last_name = last_name;
        this.employee_id = employee_id;
        this.member_id = member_id;
        this.note = note;
        this.record_date = record_date;
    }
    
    public Asset(){
        
    }
    
    

    public int getAsset_id() {
        return asset_id;
    }

    public void setAsset_id(int asset_id) {
        this.asset_id = asset_id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus_id() {
        return status_id;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFirst_Name() {
        return first_name;
    }

    public void setFirst_name(String first_Name) {
        this.first_name = first_Name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_Name) {
        this.last_name = last_Name;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public int getMember_id() {
        return member_id;
    }

    public void setMember_id(int member_id) {
        this.member_id = member_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getRecord_date() {
        return record_date;
    }

    public void setRecord_date(String record_date) {
        this.record_date = record_date;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 41 * hash + this.category_id;
        hash = 41 * hash + Objects.hashCode(this.name);
        hash = 41 * hash + Objects.hashCode(this.brand);
        hash = 41 * hash + Objects.hashCode(this.description);
        hash = 41 * hash + this.status_id;
        hash = 41 * hash + this.employee_id;
        hash = 41 * hash + this.member_id;
        hash = 41 * hash + Objects.hashCode(this.note);
        hash = 41 * hash + Objects.hashCode(this.record_date);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Asset other = (Asset) obj;
        if (this.category_id != other.category_id) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.brand, other.brand)) {
            return false;
        }
        if (!Objects.equals(this.description, other.description)) {
            return false;
        }
        if (this.status_id != other.status_id) {
            return false;
        }
        if (this.employee_id != other.employee_id) {
            return false;
        }
        if (this.member_id != other.member_id) {
            return false;
        }
        if (!Objects.equals(this.note, other.note)) {
            return false;
        }
        if (!Objects.equals(this.record_date, other.record_date)) {
            return false;
        }
        return true;
    }
    
    

    
    
    
    
}
