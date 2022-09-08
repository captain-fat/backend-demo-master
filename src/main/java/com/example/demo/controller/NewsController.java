package com.example.demo.controller;

import com.example.demo.entity.News;
import com.example.demo.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/news")
@CrossOrigin
public class NewsController {

    @Autowired
    private NewsRepository newsRepository;



    @GetMapping("/findAll/{page}/{size}")
    public Page<News> findAll(@PathVariable("page") Integer page, @PathVariable("size")Integer size){
        PageRequest pageRequest = PageRequest.of(page, size);
        return newsRepository.findAll(pageRequest);
    }

    @DeleteMapping("/deleteByid/{id}")
    public void delete(@PathVariable("id") Integer id){
        newsRepository.deleteById(id);
    }

    @GetMapping("/findByid/{id}")
    public News findByid(@PathVariable("id") Integer id){
        return newsRepository.findById(id).get();
    }

    @RequestMapping("/update")
    public void update(@RequestBody News news){
        newsRepository.save(news);
    }


}
