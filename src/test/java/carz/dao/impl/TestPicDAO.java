package carz.dao.impl;

import org.junit.Test;

import carz.dao.DAOFactory;
import carz.dao.IPictureDAO;
import carz.po.PicPO;

public class TestPicDAO {
    @Test
    public void test() {
    	IPictureDAO dao= DAOFactory.buildDAOFactory().createPictureDAO();
    	PicPO po = dao.findPicturesByCarId(1, 2).get(0);
    	System.out.println(dao.findPicturesByComId(24, 2).get(0).getPicUrl());
    }
}
