package carz.dao;

import java.util.List;

import carz.po.PicPO;


public interface IPictureDAO {
	public List<PicPO> findPicturesByCarId(int fdId, int picType);
	public List<PicPO> findPicturesByComId(int fdId, int picType);
	
}
