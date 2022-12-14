package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Returnvacationnum {
    private List<Vacation> data;
    int total;
    String msg;
}
