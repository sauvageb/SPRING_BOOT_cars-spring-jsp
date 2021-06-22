package com.example.carspring.controller;

import com.example.carspring.model.Car;
import com.example.carspring.model.Category;
import com.example.carspring.service.CarService;
import com.example.carspring.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CarController {

    @Autowired
    CarService carService;
    @Autowired
    CategoryService categoryService;

    @GetMapping("/auth/add-car")
    public String displayAddCar(Model model) {
        List<Category> categoryList = categoryService.fetchAllCategory();
        model.addAttribute("categoryList", categoryList);
        return "auth/addcar";
    }

    @PostMapping("/auth/add-car")
    public String addCar(HttpServletRequest req) {
        String carName = req.getParameter("carName");
        String carDescription = req.getParameter("carDescription");
        String priceStr = req.getParameter("carPrice");
        String categoryIdStr = req.getParameter("carCategory");

        Category category = null;
        try {
            Long categoryId = Long.parseLong(categoryIdStr);
            category = categoryService.fetchSpecificCategory(categoryId);
        } catch (NumberFormatException e) {
            // TODO : handle error
        }

        Float price;
        try {
            price = Float.parseFloat(priceStr);
            Car newCar = new Car(carName, carDescription, price);
            newCar.setCategory(category);
            carService.createCar(newCar);

        } catch (NumberFormatException e) {
            // TODO : handle error
        }

        return "redirect:/list-car";
    }

    @PostMapping("/auth/delete-car")
    public String deleteCar(@RequestParam("id") Long idParam) {
        carService.removeCar(idParam);
        return "redirect:/list-car";
    }

    @GetMapping({"/", "/list-car"})
    public String displayHomePage(Model model) {
        List<Car> carList = carService.fetchAllCars();
        model.addAttribute("carList", carList);
        return "carlist";
    }

    @GetMapping("/details-car")
    public String displayDetails(@RequestParam("id") Long idParam, Model model) {
        Car car = carService.fetchSpecificCar(idParam);
        model.addAttribute("car", car);
        return "cardetails";
    }

}
