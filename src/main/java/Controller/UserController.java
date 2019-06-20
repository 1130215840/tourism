package Controller;

import PO.User;
import Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/13 - 10:39
 */

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/toLoginPage")
   public String userLogin(){
       return "login";
   }

   @RequestMapping("/loginCheck")
    public String loginCheck(User user, HttpSession session){
       System.out.println(user.getAccount());
       System.out.println(user.getPassword());
       List<User> userList=userService.userLogin(user);
       System.out.println(userList.size());
       if(userList.size()>0){
          User user1=userService.getUserByAccount(user.getAccount());
          session.setAttribute("user",user1);
           return "index";
       }
       return "error";
   }

   @RequestMapping("/userRegister")
    public String userRegister(){
        return "";
   }




}
