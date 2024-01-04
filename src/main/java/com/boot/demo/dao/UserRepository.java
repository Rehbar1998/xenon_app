package com.boot.demo.dao;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.boot.demo.model.User;
@Repository
public interface UserRepository extends CrudRepository<User,String> {
User findByUsernameAndPassword(String username, String password);
User findByUsername(String username);
User findByEmail(String email);
User findById(long id);
}