package com.example.ruangong.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.Date;

@Mapper
public interface usermapper {
      void insert(Date createtime);
}
