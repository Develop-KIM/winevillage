package com.winevillage.winevillage.user;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
    Long findMemberNoByUsername(@Param("username") String username);
}
