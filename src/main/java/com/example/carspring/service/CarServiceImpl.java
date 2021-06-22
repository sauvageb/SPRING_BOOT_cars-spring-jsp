package com.example.carspring.service;

import com.example.carspring.model.Car;
import com.example.carspring.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("CarService")
public class CarServiceImpl implements CarService {

    @Autowired
    CarRepository carRepository;

    public void createCar(Car car) {
        carRepository.save(car);
    }

    public List<Car> fetchAllCars() {
        return (List<Car>) carRepository.findAll();
    }

    @Override
    public void removeCar(Long id) {
        carRepository.deleteById(id);
    }

    @Override
    public Car fetchSpecificCar(Long id) {
        return carRepository.findById(id).orElse(null);
    }
}
