package com.winevillage.winevillage.store;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.pay.PayDTO;
import com.winevillage.winevillage.store.StoreDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StoreController {

    @Autowired
    private IStoreService dao;

    private static final String apiKey = "AIzaSyCA_wHpvweyggdV7nAg-7ekrGf2Sx4h4CY";

    @GetMapping("/list_store.do")
    public String getStores(Model model, StoreDTO storeDTO, HttpServletRequest req, 
                            @RequestParam(value = "latTxt", required = false) String latTxt,
                            @RequestParam(value = "lngTxt", required = false) String lngTxt) {
    	
    	model.addAttribute("apiKey", apiKey);
        ArrayList<StoreDTO> store = dao.getStores(storeDTO);
		model.addAttribute("store", store);
        System.out.println("store: " + store);

        // 위도와 경도 변환
        double latitude = 0.0;
        double longitude = 0.0;
        if (latTxt != null && !latTxt.isEmpty() && lngTxt != null && !lngTxt.isEmpty()) {
            latitude = Double.parseDouble(latTxt);
            longitude = Double.parseDouble(lngTxt);
        }

        model.addAttribute("apiKey", apiKey);
        model.addAttribute("latitude", latitude);
        model.addAttribute("longitude", longitude);

        return "store/store";
    }
}
