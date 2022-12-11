package com.example.ruangong.jwt;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTCreationException;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.JWTVerifier;
import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Component
public class JwtUtils {
    public static final String SECRET = "JKKLJOoasdlfj";
    /** token 过期时间: 10000000天 */
    public static final int calendarField = 5;
    public static final int calendarInterval = 10000000;

    public static String createToken(String user_id) throws JWTCreationException {
        Date iatDate = new Date();
        Calendar nowTime = Calendar.getInstance();
        nowTime.add(calendarField, calendarInterval);
        Date expiresDate = nowTime.getTime();
        Map<String, Object> map = new HashMap<>();
        map.put("alg", "HS256");
        map.put("typ", "JWT");
        String token = JWT.create().withHeader(map) // header
                .withClaim("iss", "Service") // payload
                .withClaim("aud", "APP").withClaim("user_id",user_id)
                .withIssuedAt(iatDate) // sign time
                .withExpiresAt(expiresDate) // expire time
                .sign(Algorithm.HMAC256(SECRET)); // signature
        return token;
    }


    public static Map<String, Claim> verifyToken(String token) {
        DecodedJWT jwt = null;
        try {
            JWTVerifier verifier = JWT.require(Algorithm.HMAC256(SECRET)).build();
            jwt = verifier.verify(token);
        } catch (Exception e) {
            // e.printStackTrace();
            // token 校验失败, 抛出Token验证非法异常
        }
        return jwt.getClaims();
    }


    public static String getDate(String token) {
        Map<String, Claim> claims = verifyToken(token);
        Claim user_id_claim = claims.get("user_id");
       // if (null == user_id_claim || StringUtils.isEmpty(user_id_claim.asString())) {
            // token 校验失败, 抛出Token验证非法异常
        //}
        return user_id_claim.asString();
    }
    public static void main(String[] args) {
        String a="2022--12-7";
        String token = createToken(a);
        System.out.println("生成TOKEN-----------------------------------------");
        System.out.println(token);
        System.out.println("验证-----------------------------------------");
        System.out.println(getDate(token));

    }
}
//eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJBUFAiLCJ1c2VyX2lkIjoiMjAxMSA1IDIiLCJpc3MiOiJTZXJ2aWNlIiwiZXhwIjo4NjU2NzA3NjM1MzEsImlhdCI6MTY3MDc2MzUzMX0.68vVUeKjMNQPq38tCBSj2bwsI7WTA9i-f2K5a31SaEQ