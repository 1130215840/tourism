package Service_impl;

import Mapper.UserMapper;
import PO.User;
import Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/13 - 10:48
 */

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> userLogin(User user) {
        return userMapper.userLogin(user);
    }

    @Override
    public User getUserByAccount(String account) {
        return userMapper.getUserByAccount(account);
    }
}
