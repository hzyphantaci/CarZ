package carz.dao;

import carz.po.StatusPO;

public interface IStatusDAO {
    public StatusPO findStatusByComId(int comID) ;
}
