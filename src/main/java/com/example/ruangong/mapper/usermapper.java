package com.example.ruangong.mapper;

import com.example.ruangong.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.Date;

@Mapper
public interface usermapper {
      void insert(String createtime);
      User find(String createtime);
}
