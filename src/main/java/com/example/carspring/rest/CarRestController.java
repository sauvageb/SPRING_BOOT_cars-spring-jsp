package com.example.carspring.rest;

import com.example.carspring.model.Car;
import com.example.carspring.service.CarServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CarRestController {

    @Autowired
    CarServiceImpl carService;

    @GetMapping(value = "/api/cars", produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Car> getAll() {
        return carService.fetchAllCars();
    }

    @PostMapping(value = "/api/cars", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> addCar(@RequestBody Car car) {
        carService.createCar(car);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

}
