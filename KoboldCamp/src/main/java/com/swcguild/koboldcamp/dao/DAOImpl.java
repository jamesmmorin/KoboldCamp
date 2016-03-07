/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.koboldcamp.dao;

import com.swcguild.koboldcamp.model.Asset;
import com.swcguild.koboldcamp.model.Record;
import com.swcguild.koboldcamp.model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author apprentice
 */
public class DAOImpl implements DAO {

//            + "	JOIN asset_statuses ON\n"
//            + "		asset_records.status_id=asset_statuses.status_id\n"
//            + "	LEFT OUTER JOIN user_profiles ON\n"
//            + "		asset_records.member_id=user_profiles.user_id
    //Asset SQL statements
    private static final String SQL_POPULATE_ASSET_TABLE
            = "SELECT * FROM assets JOIN categories "
            + "ON categories.category_id = assets.category_id ";
    private static final String SQL_POPULATE_ASSET_TABLE_2
            = "SELECT * FROM asset_records JOIN asset_statuses "
            + "ON asset_statuses.status_id = asset_records.status_id "
            + "LEFT OUTER JOIN user_profiles ON "
            + "asset_records.member_id=user_profiles.user_id WHERE asset_id = ? "
            + "ORDER BY record_id DESC LIMIT 0, 1";
    private static final String SQL_ASSET_RENTAL_HISTORY
            = "SELECT * FROM asset_records JOIN asset_statuses \n"
            + "ON asset_statuses.status_id = asset_records.status_id \n"
            + "LEFT OUTER JOIN user_profiles ON \n"
            + "asset_records.member_id=user_profiles.user_id WHERE asset_id = ?;";
    private static final String SQL_INSERT_ASSET_1
            = "INSERT INTO assets (category_id, brand, description) VALUES(?, ?, ?)";
    private static final String SQL_INSERT_ASSET_2
            = "INSERT INTO asset_records (asset_id, employee_id, member_id, status_id, record_date, note)"
            + "VALUES(?, ?, ?, ?, NOW(), ?)";
    private static final String SQL_DELETE_ASSET_1
            = "DELETE FROM asset_records WHERE asset_id = ?";
    private static final String SQL_DELETE_ASSET_2
            = "DELETE FROM assets WHERE asset_id = ?";

    //User SQL Statements
    private static final String SQL_INSERT_USER_1
            = "INSERT INTO users (username, password, enabled) VALUES(?, ?, ?)";
    private static final String SQL_INSERT_USER_2
            = "INSERT INTO user_profiles (user_id, first_name, last_name, email, phone) VALUES(?, ?, ?, ?, ?)";
    private static final String SQL_INSERT_USER_3
            = "INSERT INTO authorities (username, authority) VALUES(?, ?)";
    private static final String SQL_EDIT_USER
            = "UPDATE user_profiles SET first_name = ?, last_name = ?, email = ?, phone = ? WHERE user_id = ?";
    private static final String SQL_POPULATE_USER_TABLE
            = "SELECT DISTINCT * FROM users \n"
            + "JOIN user_profiles \n"
            + "ON users.user_id=user_profiles.user_id \n"
            + "JOIN authorities ON users.username=authorities.username;";
    private static final String SQL_DISABLE_USER_FROM_USERS
            = "UPDATE users SET enabled = 2 WHERE user_id = ?";
    private static final String SQL_ENABLE_USER_FROM_USERS
            = "UPDATE users SET enabled = 1 WHERE user_id = ?";
    private static final String SQL_RESET_PASSWORD
            = "UPDATE users SET password = 'kobolds-r-great' WHERE user_id = ?";
    private static final String SQL_UPDATE_PASSWORD
            = "UPDATE users SET password = ? WHERE user_id = ?";
    private static final String SQL_GET_USER_ID
            = "SELECT user_id FROM users WHERE username = ?";

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public Asset addAsset(Asset asset) {
        jdbcTemplate.update(SQL_INSERT_ASSET_1,
                asset.getCategory_id(),
                asset.getBrand(),
                asset.getDescription());

        Integer id = jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);
        asset.setAsset_id(id);

        jdbcTemplate.update(SQL_INSERT_ASSET_2,
                asset.getAsset_id(),
                asset.getEmployee_id(),
                asset.getMember_id(),
                asset.getStatus_id(),
                asset.getNote());

        return asset;
    }

    @Override
    public void deleteAsset(int assetId) {
        jdbcTemplate.update(SQL_DELETE_ASSET_1, assetId);
        jdbcTemplate.update(SQL_DELETE_ASSET_2, assetId);
    }

    @Override
    public List<Asset> getAllAssets() {
        List<Asset> assets = jdbcTemplate.query(SQL_POPULATE_ASSET_TABLE, new AssetMapper());

        for (Asset asset : assets) {

            Record record = jdbcTemplate.queryForObject(SQL_POPULATE_ASSET_TABLE_2, new RecordMapper(), asset.getAsset_id());
            asset.setStatus(record.getStatus());
            asset.setFirst_name(record.getFirst_name());
            asset.setLast_name(record.getLast_name());
        }

        return assets;
    }

    @Override
    public List<Record> assetRentalHistory(int id) {
        List<Record> record = jdbcTemplate.query(SQL_ASSET_RENTAL_HISTORY, new RecordMapper(), id);

        return record;
    }
//
//    @Override
//    public List<Users> searchAsset(Map<SearchTerm, String> criteria){
//        
//    }
//    

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public Record assetRecordUpdate(Record record) {
        jdbcTemplate.update(SQL_INSERT_ASSET_2,
                record.getAsset_id(),
                record.getEmployee_id(),
                record.getMember_id(),
                record.getStatus_id(),
                record.getNote());

        return record;
    }

    @Override
    public List<User> getAllUsers() {
        return jdbcTemplate.query(SQL_POPULATE_USER_TABLE, new UserMapper());
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public User addUser(User user) {
        jdbcTemplate.update(SQL_INSERT_USER_1,
                user.getUsername(),
                user.getPassword(),
                user.getEnabled());

        Integer id = jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);
        user.setUser_id(id);

        jdbcTemplate.update(SQL_INSERT_USER_2,
                user.getUser_id(),
                user.getFirst_name(),
                user.getLast_name(),
                user.getEmail(),
                user.getPhone());

        if (user.getAuthority().equals("ROLE_ADMIN")) {
            jdbcTemplate.update(SQL_INSERT_USER_3,
                    user.getUsername(),
                    "ROLE_EMPLOYEE");
            jdbcTemplate.update(SQL_INSERT_USER_3,
                    user.getUsername(),
                    "ROLE_USER");
        }
        if (user.getAuthority().equals("ROLE_EMPLOYEE")) {
            jdbcTemplate.update(SQL_INSERT_USER_3,
                    user.getUsername(),
                    "ROLE_USER");
        }

        jdbcTemplate.update(SQL_INSERT_USER_3,
                user.getUsername(),
                user.getAuthority());

        return user;

    }

    @Override
    public void editUser(User user) {
        jdbcTemplate.update(SQL_EDIT_USER,
                user.getFirst_name(),
                user.getLast_name(),
                user.getEmail(),
                user.getPhone(),
                user.getUser_id());

    }

    @Override
    public void resetPassword(int id) {
        jdbcTemplate.update(SQL_RESET_PASSWORD, id);
    }

    @Override
    public void updatePassword(User user) {
        jdbcTemplate.update(SQL_UPDATE_PASSWORD,
                user.getPassword(),
                user.getUser_id());
    }

    @Override
    public void disableUser(int id) {
//        String username = jdbcTemplate.queryForObject("SELECT username FROM users WHERE user_id = ?", String.class, id);
        jdbcTemplate.update(SQL_DISABLE_USER_FROM_USERS, id);
    }

    @Override
    public void enableUser(int id) {
        jdbcTemplate.update(SQL_ENABLE_USER_FROM_USERS, id);
    }

    @Override
    public int getUserId(String username) {
        int id = jdbcTemplate.queryForObject(SQL_GET_USER_ID, Integer.class, username);

        return id;
    }

    private static final class AssetMapper implements RowMapper<Asset> {

        @Override
        public Asset mapRow(ResultSet rs, int rowNum) throws SQLException {
            Asset asset = new Asset();
            asset.setAsset_id(rs.getInt("asset_id"));
            asset.setName(rs.getString("name"));
            asset.setBrand(rs.getString("brand"));
            asset.setDescription(rs.getString("description"));

//            asset.setName(rs.getString("name"));
//            asset.setStatus_id(rs.getInt("status_id"));
//            asset.setStatus(rs.getString("status"));
//            asset.setFirst_name(rs.getString("first_name"));
//            asset.setLast_name(rs.getString("last_name"));
//            asset.setEmployee_id(rs.getInt("employee_id"));
//            asset.setMember_id(rs.getInt("member_id"));
//            asset.setNote(rs.getString("note"));
//            asset.setRecord_date(rs.getString("record_date"));
            return asset;
        }
    }

    private static final class UserMapper implements RowMapper<User> {

        @Override
        public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
            user.setUser_id(rs.getInt("user_id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEnabled(rs.getInt("enabled"));
            user.setFirst_name(rs.getString("first_name"));
            user.setLast_name(rs.getString("last_name"));
            user.setEmail(rs.getString("email"));
            user.setPhone(rs.getString("phone"));
            user.setAuthority(rs.getString("authority"));

            return user;
        }
    }

    private static final class RecordMapper implements RowMapper<Record> {

        @Override
        public Record mapRow(ResultSet rs, int rowNum) throws SQLException {
            Record record = new Record();
            record.setAsset_id(rs.getInt("asset_id"));
            record.setRecord_id(rs.getInt("record_id"));
            record.setEmployee_id(rs.getInt("employee_id"));
            record.setMember_id(rs.getInt("member_id"));
            record.setStatus_id(rs.getInt("status_id"));
            record.setStatus(rs.getString("status"));
            record.setRecord_date(rs.getString("record_date"));
            record.setNote(rs.getString("note"));
            record.setFirst_name(rs.getString("first_name"));
            record.setLast_name(rs.getString("last_name"));

            return record;

        }
    }
}
