package com.example.ruangong.mapper;

import com.example.ruangong.entity.Achievement;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface achievementmapper {
    Achievement find(String id);
}
