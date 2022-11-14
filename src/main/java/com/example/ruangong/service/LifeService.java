package com.example.ruangong.service;

import com.example.ruangong.entity.LifeEvent;

import java.util.List;

public interface LifeService {
    void updateProperties(List<Integer> propertiesChange);

    void updateStartEventIds(List<Integer> event);

    boolean lifeOver();

    void lifeStart();

    void genEvent(int Stage);
}
