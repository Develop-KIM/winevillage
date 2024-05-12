package com.winevillage.winevillage.store;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StoreController {

    @Autowired
    private IStoreService dao;

    private static final String apiKey = "AIzaSyCA_wHpvweyggdV7nAg-7ekrGf2Sx4h4CY";

    @GetMapping("/list_store.do")
    public String geoFunc4(Model model, HttpServletRequest req,
                           @RequestParam(value = "distance", defaultValue = "0") int distance,
                           @RequestParam(value = "latTxt", defaultValue = "37.55998") double latTxt,
                           @RequestParam(value = "lngTxt", defaultValue = "126.9858296") double lngTxt,
                           @RequestParam(value = "pageNum", defaultValue = "1") int pageNum) {

        model.addAttribute("apiKey", apiKey);

        int numberPerPage = 10;
        int resultCount = dao.searchCount(distance, latTxt, lngTxt);

        model.addAttribute("resultCount", " / 검색결과 : " + resultCount + "건");
        model.addAttribute("selectNum", Math.ceil((double) resultCount / numberPerPage));

        int start = ((pageNum - 1) * numberPerPage) + 1;
        int end = pageNum * numberPerPage;

        System.out.println(distance + " " + latTxt + " " + lngTxt + " " + start + " " + end);

        ArrayList<StoreDTO> store = dao.searchRadius(distance, latTxt, lngTxt, start, end);
        model.addAttribute("store", store);
        System.out.println(store);
        return "store/store";
    }
}
