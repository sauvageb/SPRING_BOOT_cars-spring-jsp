package com.example.carspring.service;

import com.example.carspring.model.Car;

import java.util.List;

public interface CarService {

    void createCar(Car car);

    List<Car> fetchAllCars();

    void removeCar(Long id);

    Car fetchSpecificCar(Long id);
}
