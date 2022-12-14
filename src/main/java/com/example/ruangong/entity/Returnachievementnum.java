package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Returnachievementnum {
    private List<Achievement> data;
    int total;
    String msg;
}
