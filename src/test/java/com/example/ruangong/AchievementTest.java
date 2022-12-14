package com.example.ruangong;

import com.example.ruangong.entity.Academy;
import com.example.ruangong.entity.Achievement;
import com.example.ruangong.mapper.academymapper;
import com.example.ruangong.mapper.achievementmapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Repeat;

import java.util.List;

@SpringBootTest
public class AchievementTest {
    @Autowired
    achievementmapper ach;

    @Test
    @DisplayName("Achievement的find方法测试")
    void achievement1(){
//        判断取得的id是否是2
        Achievement temp = ach.find("2");
        Assertions.assertEquals(2,temp.getId());
        System.out.println(temp);
    }

    @Test
    @DisplayName("Achievement的find_by_type方法测试")
    void achievement2(){
//        判断返回的数据类型是否是普通成就
        List<Achievement>  temp = ach.find_by_type("普通成就");
        Assertions.assertEquals("普通成就",temp.get(0).getAchievement_type());
        System.out.println(temp);
    }

    @Test
    @DisplayName("Achievement的find方法测试")
    void achievement3(){
//        判断数据库中普通类型的数量是否正确
        int  temp = ach.find_num("普通成就");
        Assertions.assertTrue(24==temp,"数据库的数量类型不正确");
        System.out.println(temp);
    }


}
