package com.example.demo.controller;


import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import com.example.demo.utils.TokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;


@RestController
@RequestMapping("/user")
@CrossOrigin
public class UserController {


    @Autowired
    private UserRepository userRepository;


    /**
     * create time: 2021-05-20
     * @param user
     * @return boolean
     */
    @PostMapping("/register")
    public boolean register(@RequestBody User user){
        if (userRepository.findByUsername(user.getUsername()) == null){
            //加密
            user.setPassword(TokenUtil.md5(user.getPassword()));
            userRepository.save(user);
            return true;
        }
        return false;
    }
    @PostMapping("/registerCheck")
    public boolean registerCheck(@RequestBody User user){
        if (userRepository.findByUsername(user.getUsername()) == null){
            return true;
        }else {
            return false;
        }
    }

    /**
     * create time: 2021-05-20
     * @param user
     * @return java.lang.String
     */
    @PostMapping("/login")
    public String login(@RequestBody User user){
        if (userRepository.findUserByUsernameAndPassword(user.getUsername(), TokenUtil.md5(user.getPassword())) != null){
            String token = TokenUtil.tokenGenerate(user.getUsername(), TokenUtil.md5(user.getPassword()));
            return token;
        }
        return "false";
    }

    /**
     * create time: 2021-05-20
     * @param token
     * @param response
     * @return boolean
     */
    //对存储的token进行验证, 失效返回false
    @RequestMapping(value = "/checkToken", method = RequestMethod.POST)
    @ResponseBody
    public boolean checkToken(@RequestBody String token, HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        return TokenUtil.verify(token);

    }






}
