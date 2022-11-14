package com.example.ruangong.entity;

import lombok.Data;

import java.util.*;

@Data
public class Life {
    private ArrayList<Integer> _properties; // 本局人生的属性值:[智力,体质,魅力,财富,运气,心情]
    private Boolean _lifeOver; // 人生是否结束
    private ArrayList<Integer> _startEventIds;// 每个阶段的初始候选事件id
    private ArrayList<Integer> _invalidEventIds; // 人生中不会发生的事件的id列表
    private String _major;// 本局人生的专业
    private ArrayList<String> _talents; // 本局天赋
    private Map<Integer, String> _eventMap; // 初始化事件id与事件的映射
}
