package com.example.ruangong.entity;

import lombok.Data;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@Data
public class Talent {
    private int _id;// 唯一表示符id
    private String _color; // 颜色（稀有度）
    private List<Integer> _propertiesChange; // 玩家属性的改变,可以为None
    private List<Integer> _eventIds; // 天赋专属事件,可以为None
}
