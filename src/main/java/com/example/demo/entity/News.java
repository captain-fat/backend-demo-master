package com.example.demo.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
//下面两个注解使用数据库默认值来更新数据库
@DynamicInsert
@DynamicUpdate
public class News {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private String tags;
    private String content;
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String pageview_counts;
    private String pageviews;
    private String status;
}
