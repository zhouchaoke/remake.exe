package com.example.ruangong;

import com.example.ruangong.entity.Academy;
import com.example.ruangong.entity.Achievement;
import com.example.ruangong.entity.LifeEvent;
import com.example.ruangong.mapper.academymapper;
import com.example.ruangong.mapper.achievementmapper;
import com.example.ruangong.mapper.eventmapper;
import com.example.ruangong.mapper.vacationmapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Repeat;

import java.util.List;

@SpringBootTest
public class eventTest {

    @Autowired
    private eventmapper eve;
    @Autowired
    private achievementmapper ach;
    @Autowired
    private vacationmapper vac;

    @Test
    @DisplayName("eventcontroller的findbyid测试方法")
    void eventcontroller1() {
//        判断请求返回的数组是否是9个
        List<LifeEvent> temp = eve.findbyid(1, 9);
        Assertions.assertEquals(9, temp.size());
        System.out.println(temp.size());
    }

    @Test
    @DisplayName("eventcontroller的findbystage测试方法")
    void eventcontroller2() {
//        判断请求返回的数组是否是4个
        List<LifeEvent> temp = eve.findbystage(17);
        Assertions.assertEquals(4, temp.size());
        System.out.println(temp.size());
    }

    @Test
    @DisplayName("eventcontroller的findid测试方法")
    void eventcontroller3() {
//        判断请求返回的数组是否是9个
        List<LifeEvent> temp = eve.findbyid(1, 9);
        Assertions.assertEquals(9, temp.size());
        System.out.println(temp.size());
    }
}
