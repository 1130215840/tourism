package Mapper;


import PO.Sight;

import java.util.List;

public interface SightMapper {

    //模糊查询景点
    List<Sight> findSightByName(Sight sight);

    int deleteByPrimaryKey(Integer id);

    int insert(Sight record);

    int insertSelective(Sight record);

    Sight selectByPrimaryKey(Integer id);

}