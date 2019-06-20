package Mapper;


import PO.Order;

public interface OrderMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);


}