package com.example.ruangong;
import com.example.ruangong.entity.Academy;
import com.example.ruangong.entity.User;
import com.example.ruangong.mapper.academymapper;
import com.example.ruangong.mapper.usermapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Repeat;

@SpringBootTest
public class userTest {


    @Autowired
    private usermapper aca;

    @Test
    @DisplayName("user的find方法测试")
    void  user1(){
//        判断创建日期为"2022--12-7"的注册用户是否存在
        User temp = aca.find("2022--12-7");
        Assertions.assertNull(temp);
        System.out.println(temp);
    }
}
