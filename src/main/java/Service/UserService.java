package Service;

import PO.User;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/13 - 10:47
 */
public interface UserService {
    //用户登录
    List<User> userLogin(User user);

    //获取登录成功的账户
    User getUserByAccount(String account);
}
