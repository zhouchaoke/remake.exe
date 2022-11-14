package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class User {
    private int id; // 唯一表示符用户id
    private List<Integer> achievementsDone; // 用户已触发的成就列表
    private int cnt; // 用户玩的轮次计数,问号表示可有可无
}
