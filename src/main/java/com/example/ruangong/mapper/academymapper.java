package com.example.ruangong.mapper;

import com.example.ruangong.entity.academy;
import com.example.ruangong.entity.admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface academymapper {
       List<academy> findbytype(String type);
       List<academy> findbyname(String name);
       List<academy> find();
}
