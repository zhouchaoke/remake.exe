package com.example.ruangong.controller;

import com.example.ruangong.entity.Returntoken;
import com.example.ruangong.entity.User;
import com.example.ruangong.entity.msg;
import com.example.ruangong.entity.token;
import com.example.ruangong.jwt.JwtUtils;
import com.example.ruangong.mapper.usermapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping
public class jwtcontroller {
    @Autowired
    usermapper u;
    Returntoken re = new Returntoken();
    token r = new token();

    @GetMapping("/token")
    public token token() {
        Date t = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String p = simpleDateFormat.format(t);
        u.insert(p);
        r.setToken(JwtUtils.createToken(p));
        return r;
    }

    @GetMapping("/user/data")
    protected Returntoken doget(@RequestHeader("lifestartToken") String req) {
            int[] p3 = new int[0];
            int[] p4 = new int[0];
        try {
            String s = u.find(JwtUtils.getDate(req)).getCommonAchievementList();
            if (s != null&&!s.equals("")) {
                String[] st = s.split(" ");
                int[] p1 = new int[st.length];
                for (int i = 0; i < st.length; i++)
                    p1[i] = Integer.parseInt(st[i]);
                re.setCommonAchievemntList(p1);
            } else re.setCommonAchievemntList(p3);
            String s1 = u.find(JwtUtils.getDate(req)).getSpecialAchievementList();
            if (s1 != null&&!s1.equals("")) {
                String[] s2 = s1.split(" ");
                int[] p2 = new int[s2.length];
                for (int i = 0; i < s2.length; i++)
                    p2[i] = Integer.parseInt(s2[i]);
                re.setSpecialAchievementList(p2);
            } else re.setSpecialAchievementList(p4);
            re.setRestartNum(u.find(JwtUtils.getDate(req)).getRestartNum());
            return re;
        } catch (Exception e) {
            return null;
        }
    }

    @GetMapping("/user/update")
    protected msg update(int[] commonAchievementList, int[] specialAchievementList, int restartNum, @RequestHeader("lifestartToken") String lifestartToken) {
        msg m = new msg();
        String r = JwtUtils.getDate(lifestartToken);
        try {
            String k1 = "";
            if (commonAchievementList.length > 0) {
                String s1[] = new String[commonAchievementList.length];
                for (int i = 0; i < commonAchievementList.length - 1; i++) {
                    s1[i] = String.valueOf(commonAchievementList[i]);
                    k1 += s1[i];
                    k1 += ' ';
                }
                k1 += commonAchievementList[commonAchievementList.length - 1];
            }
            String k2 = "";
            if (specialAchievementList.length > 0) {
                String s2[] = new String[specialAchievementList.length];
                for (int i = 0; i < specialAchievementList.length - 1; i++) {
                    s2[i] = String.valueOf(specialAchievementList[i]);
                    k2 += s2[i];
                    k2 += ' ';
                }
                k2 += specialAchievementList[specialAchievementList.length - 1];
            }
            u.update(k1, k2, restartNum, r);
        } catch (Exception e) {
            m.setMsg("faild");
            return m;
        }
        m.setMsg("ok");
        return m;
    }
}
