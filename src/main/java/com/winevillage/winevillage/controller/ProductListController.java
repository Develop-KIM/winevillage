package com.winevillage.winevillage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.winevillage.winevillage.dto.ProductDTO;
import com.winevillage.winevillage.service.ProductService;

@Controller
public class ProductListController {

    @Autowired
    private ProductService productService;

    @GetMapping("/list_wine.do")
    public String showProductList(Model model) {
        List<ProductDTO> products = productService.listProducts();
        model.addAttribute("products", products);
        return "shop/wine/product_list_Wine";
    }
}
