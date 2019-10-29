package com.devincubator.project.dits.repository;

import com.devincubator.project.dits.pojo.entity.User;
import com.devincubator.project.dits.util.HibernateSessionFactoryUtil;
import org.testng.annotations.Test;
import java.util.List;

public class UserRepositoryTest {

    @Test
    public void testRead() {
        UserRepository userRepository = new UserRepository();
        User user = (User) userRepository.getUserByLogin("raman", HibernateSessionFactoryUtil
                        .getSessionFactory()
                        .openSession());
        System.out.println(user);
    }

    @Test
    public void testGetUserByLoginAndPassword() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("cefjkdnj");
        stringBuilder.append("213456");
        System.out.println(stringBuilder.toString());

    }

    @Test
    public void testGetUserByLogin() {
        StringBuilder password = new StringBuilder();
        password.append("{noop}");
        password.append(1232435);
        System.out.println(password.toString());
    }

    @Test
    public void testGetUserByLogin1() {
    }
}