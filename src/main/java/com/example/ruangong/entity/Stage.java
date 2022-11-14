package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Stage {
    private int _id; // 标识符id
    private List<Integer> _eventIds; // 专属该阶段的事件id列表
}
