/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.koboldcamp;

import com.swcguild.koboldcamp.dao.DAO;
import com.swcguild.koboldcamp.model.Asset;
import com.swcguild.koboldcamp.model.User;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author apprentice
 */
public class KoboldCampDaoTest {

    private DAO dao;

    public KoboldCampDaoTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("test-applicationContext.xml");
        dao = ctx.getBean("DAO", DAO.class);
        JdbcTemplate cleaner = ctx.getBean("jdbcTemplate", JdbcTemplate.class);
        cleaner.execute("DELETE FROM KoboldCamp_Test.asset_records WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.asset_statuses WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.assets WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.authorities WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.categories WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.user_profiles WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.users WHERE 1 = 1");

        cleaner.execute("INSERT INTO `users` (`user_id`, `username`, `password`, `enabled`) VALUES\n"
                + "	(1, \"test_admin\", \"password\", 1),\n"
                + "	(2, \"test_employee\", \"password\", 1),\n"
                + "	(3, \"test_user\", \"password\", 1)");
        cleaner.execute("INSERT INTO `authorities` (`username`, `authority`) VALUES ('test_admin', 'ROLE_ADMIN'),('test_admin', 'ROLE_EMPLOYEE'),('test_admin', 'ROLE_USER'),('test_employee', 'ROLE_EMPLOYEE'),('test_employee', 'ROLE_USER'),('test_user', 'ROLE_USER')");
        cleaner.execute("INSERT INTO `categories` (`category_id`, `name`) VALUES(1, 'Backpacks'),(2, 'Sleeping Bags'),(3, 'Camping Stoves'),(4, 'Paddling Gear'),(5, 'Tents')");
        cleaner.execute("INSERT INTO `asset_statuses` (`status_id`, `status`) VALUES (1, 'AVAILABLE'),(2, 'CHECKED OUT'),(3, 'BROKEN'),(4, 'LOST'),(5, 'UNDER REPAIRS')");

    }

    @After
    public void tearDown() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("test-applicationContext.xml");
        JdbcTemplate cleaner = ctx.getBean("jdbcTemplate", JdbcTemplate.class);
        cleaner.execute("DELETE FROM KoboldCamp_Test.asset_records WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.asset_statuses WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.assets WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.authorities WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.categories WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.user_profiles WHERE 1 = 1");
        cleaner.execute("DELETE FROM KoboldCamp_Test.users WHERE 1 = 1");
    }

    @Test
    public void addDeleteAsset() {

        Asset na = new Asset();
        na.setCategory_id(1);
        na.setName("Mike Spike");
        na.setBrand("Kifaru");
        na.setDescription("I LOVE JUnits (pronounced joo-nits)");
        na.setStatus_id(1);
        na.setEmployee_id(1);
        na.setMember_id(1);
        na.setNote("Why do I have to write these (in best whiney voice)");
        na.setRecord_date("1/2016");

        dao.addAsset(na);

        dao.deleteAsset(na.getAsset_id());

    }

    @Test
    public void getAllAssets() {
        Asset na1 = new Asset();

        na1.setCategory_id(1);
        na1.setName("Mike Spike");
        na1.setBrand("Kifaru");
        na1.setDescription("I LOVE JUnits (pronounced joo-nits)");
        na1.setStatus_id(1);
        na1.setEmployee_id(2);
        na1.setMember_id(2);
        na1.setNote("Why do I have to write these (in best whiney voice)");
        na1.setRecord_date("1/2016");

        Asset na2 = new Asset();
        na2.setCategory_id(2);
        na2.setName("Fred Fry");
        na2.setBrand("Coleman");
        na2.setDescription("I LOVE JUnits (pronounced joo-nits)");
        na2.setStatus_id(1);
        na2.setEmployee_id(2);
        na2.setMember_id(2);
        na2.setNote("Why do I have to write these (in best whiney voice)");
        na2.setRecord_date("1/2016");

        dao.addAsset(na1);
        dao.addAsset(na2);

        List<Asset> aList = dao.getAllAssets();
        assertEquals(2, aList.size());
//        assertTrue(aList.contains(na1));
//        assertTrue(aList.contains(na2));

    }

    @Test
    public void addDisableEnableUser() {

        User nu = new User();
        nu.setUser_id(4);
        nu.setUsername("MadMen");
        nu.setPassword("Password");
        nu.setFirst_name("Jimmy");
        nu.setLast_name("John");
        nu.setEmail("callmecrazy@calls.com");
        nu.setPhone("123-456-789");
        nu.setEnabled(1);
        nu.setAuthority("ROLE_ADMIN");

        dao.addUser(nu);

        dao.disableUser(nu.getUser_id());
        dao.enableUser(nu.getUser_id());

    }
    @Test
    public void getAllEditUsersResetUpdatePassword() {

        User nu1 = new User();
        nu1.setUser_id(1);
        nu1.setUsername("SeesFar");
        nu1.setPassword("CrazyMan");
        nu1.setFirst_name("John");
        nu1.setLast_name("Johnson");
        nu1.setEmail("callmeJohn@calls.com");
        nu1.setPhone("123456789");
        nu1.setEnabled(1);
        nu1.setAuthority("ROLE_ADMIN");

        User nu2 = new User();
        nu2.setUser_id(2);
        nu2.setUsername("CrazyWild");
        nu2.setPassword("Wild-Horse");
        nu2.setFirst_name("Jill");
        nu2.setLast_name("Jorsen");
        nu2.setEmail("callmebabyjill@calls.com");
        nu2.setPhone("123-456-789");
        nu2.setEnabled(1);
        nu2.setAuthority("ROLE_USER");

        dao.addUser(nu1);
        dao.addUser(nu2);

        User nu3 = new User();
        nu1.setUsername("FastGuy");
        nu1.setFirst_name("Jill");
        nu1.setLast_name("Jordan");
        nu1.setEmail("callme@calls.com");
        nu1.setPhone("123456789");
        nu1.setUser_id(2);

        User nu4 = new User();
        nu1.setPassword("cool");
        nu1.setUser_id(1);

        dao.editUser(nu3);
        dao.resetPassword(2);
        dao.updatePassword(nu4);

        List<User> uList = dao.getAllUsers();
        assertEquals(2, uList.size());
//        assertTrue(uList.contains(nu1));
//        assertTrue(uList.contains(nu2));

    }

}
