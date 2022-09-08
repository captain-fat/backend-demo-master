package com.example.demo.controller;

import com.example.demo.entity.Stock;
import com.example.demo.repository.StockRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/stock")
@CrossOrigin
public class StockController {

    @Autowired
    private StockRepository stockRepository;


    @GetMapping("/findAll")
    public List<Stock> findAll(){
        return stockRepository.findAll();
    }
}
