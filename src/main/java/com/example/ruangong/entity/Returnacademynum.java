package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Returnacademynum {
    private List<Academy> data;
    int total;
    String msg;
}
