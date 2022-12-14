package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Returneventnum {
     private List<LifeEvent> data;
     int total;
     String msg;
}
