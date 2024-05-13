package com.winevillage.winevillage.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartListService {

	// CartMapper 인터페이스 의존성 주입
    private final CartListMapper cartListMapper;

    // 생성자를 통한 의존성 주입
    @Autowired
    public CartListService(CartListMapper cartListMapper) {
        this.cartListMapper = cartListMapper;
    }
    
    public void addProductToMemberCart(String productCode, Long memberNo) {
        Map<String, Object> params = new HashMap<>();
        params.put("productCode", productCode);
        params.put("memberNo", memberNo);
        cartListMapper.addProductToMemberCart(params);
    }

    public void addProductToNonMemberCart(String productCode, String cookieId) {
        Map<String, Object> params = new HashMap<>();
        params.put("productCode", productCode);
        params.put("cookieId", cookieId);
        cartListMapper.addProductToNonMemberCart(params);
    }
    
    public List<CartListDTO> getCartListByCookieId(String cookieId) {
        return cartListMapper.getCartListByCookieId(cookieId);
    }
    
    public List<CartListDTO> getCartListByMemberNo(CartListDTO memberNo) {
        return cartListMapper.getCartListByMemberNo(memberNo);
    }
    
    public void updateOrderQuantity(Long orderNo, String productCode, int orderAmount) {
        cartListMapper.updateOrderQuantity(orderNo, productCode, orderAmount);
    }
    
    public CartListDTO getCartItem(Long orderNo, String productCode) {
        return cartListMapper.getCartItem(orderNo, productCode);
    }
    
    public CartListDTO memberView(String username) {
        return cartListMapper.memberView(username);
    }

}
