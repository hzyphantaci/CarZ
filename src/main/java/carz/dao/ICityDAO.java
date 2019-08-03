package carz.dao;

import java.util.List;

import carz.po.CityPO;

public interface ICityDAO {
    public List<CityPO> searchCitys();
    public List<String> searchCitysName();
}
