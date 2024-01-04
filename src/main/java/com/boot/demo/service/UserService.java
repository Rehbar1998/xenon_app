package com.boot.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.demo.dao.UserRepository;
import com.boot.demo.model.User;

import jakarta.transaction.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;
    
    public User saveUser(User user) {
        return userRepository.save(user);
    }
    
    public User findByUsernameAndPassword(String username, String password) {
        return userRepository.findByUsernameAndPassword(username, password);
    }

    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    public User findById(Long id) {
        return userRepository.findById(id);
    }
    public List<User> findAllUsers() {
        return (List<User>) userRepository.findAll();
    }
    public void deleteUserById(Long userId) {
        User user = userRepository.findById(userId);
            userRepository.delete(user);
    }
}
