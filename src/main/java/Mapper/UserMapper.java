package Mapper;

import PO.User;

import java.util.List;


public interface UserMapper {


    //用户登录
    List<User> userLogin(User user);

    //获取登录成功的账户
    User getUserByAccount(String account);

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

}