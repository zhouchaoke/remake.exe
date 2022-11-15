package com.example.ruangong.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class User {
    private int id; // 唯一表示符用户id
    private ArrayList<Integer> achievementsDone; // 用户已触发的成就列表
}
