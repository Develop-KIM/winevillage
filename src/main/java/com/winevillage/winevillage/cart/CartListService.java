package com.winevillage.winevillage.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CartListService {

    private final CartListMapper cartListMapper;

    @Autowired
    public CartListService(CartListMapper cartListMapper) {
        this.cartListMapper = cartListMapper;
    }
    
    public boolean addProductToMemberCart(String productCode, String memberNo) {
        try {
            cartListMapper.addProductToMemberCart(productCode, memberNo);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addProductToNonMemberCart(String productCode, String cookieId) {
        try {
            Map<String, Object> params = new HashMap<>();
            params.put("productCode", productCode);
            params.put("cookieId", cookieId);
            cartListMapper.addProductToNonMemberCart(params);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public List<CartListDTO> getCartListByCookieId(String cookieId) {
        return cartListMapper.getCartListByCookieId(cookieId);
    }
    
    public List<CartListDTO> getCartListByMemberNo(String memberNo) {
        return cartListMapper.getCartListByMemberNo(memberNo);
    }
    
    public void updateOrderQuantity(Long orderNo, String productCode, int orderAmount) {
        cartListMapper.updateOrderQuantity(orderNo, productCode, orderAmount);
    }
    
    public CartListDTO getCartItem(Long orderNo, String productCode) {
        return cartListMapper.getCartItem(orderNo, productCode);
    }
    
    public String getMemberNo(String memberId) {
        return cartListMapper.getMemberNo(memberId);
    }
    
    public boolean updateMemberCart(String memberNo, String cookieId) {
    	return cartListMapper.updateMemberCart(memberNo, cookieId);
    }
    
    public CartListDTO getCartList(Long orderNo, String productCode) {
        return cartListMapper.getCartList(orderNo, productCode);
    }
    
    public void deleteItems(List<CartListDTO> cartListDTO) {
        cartListMapper.deleteItems(cartListDTO);
    }
}
    

