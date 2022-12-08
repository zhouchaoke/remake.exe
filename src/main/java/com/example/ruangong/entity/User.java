package com.example.ruangong.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
public class User {
    private int id; // 唯一表示符用户id
    private String achievement_done; // 用户已触发的成就列表
    private int cnt; //触发成就数目
    private String createtime;
}
