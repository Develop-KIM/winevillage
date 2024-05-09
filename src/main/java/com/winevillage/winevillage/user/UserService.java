package com.winevillage.winevillage.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserMapper userMapper;

    @Autowired
    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public Long findMemberNoByUsername(String username) {
        return userMapper.findMemberNoByUsername(username);
    }
    
}

