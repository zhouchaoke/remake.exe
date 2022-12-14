package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Returntalentnum {
    private List<Talent> data;
    int total;
    String msg;
}
