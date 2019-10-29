package com.devincubator.project.dits.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.springframework.beans.factory.annotation.Autowired;

public class HibernateUtil {

    private static volatile HibernateUtil hibernateUtil;

    private SessionFactory sessionFactory;

    private HibernateUtil() {
        sessionFactory =
                new MetadataSources(
                        new StandardServiceRegistryBuilder()
                                .configure()
                                .build()
                ).buildMetadata().buildSessionFactory();
    }

    public static synchronized HibernateUtil getInstance() {
        if (hibernateUtil == null) {
            hibernateUtil = new HibernateUtil();
        }
        return hibernateUtil;
    }

}
