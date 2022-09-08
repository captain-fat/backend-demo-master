package com.example.demo.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class Stock {
    @Id
    private Integer id;
    private String name;
    private Double price;
    private Double rate;
}
