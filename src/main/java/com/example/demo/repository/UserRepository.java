package com.example.demo.repository;

import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

//实体类类型, 主键参数
public interface UserRepository extends JpaRepository<User, Integer> {

    User findByUsername(String username);

    User findUserByUsernameAndPassword(String username, String password);
}
