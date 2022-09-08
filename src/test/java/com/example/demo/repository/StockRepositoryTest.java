package com.example.demo.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class StockRepositoryTest {
    @Autowired
    private StockRepository stockRepository;

    @Test
    void findAll(){
        System.out.println(stockRepository.findAll());
    }
}