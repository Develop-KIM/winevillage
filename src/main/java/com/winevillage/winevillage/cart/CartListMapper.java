package com.winevillage.winevillage.cart;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CartListMapper {
    void addProductToMemberCart(Map<String, Object> params);
    void addProductToNonMemberCart(Map<String, Object> params);
    List<CartListDTO> getCartListByCookieId(@Param("cookieId") String cookieId);
    List<CartListDTO> getCartListByMemberNo(CartListDTO memberNo);
    CartListDTO getProductByCode(@Param("productCode") String productCode);
    void updateOrderQuantity(@Param("orderNo") Long orderNo, 
    						@Param("productCode") String productCode,
    						@Param("orderAmount") int orderAmount);
    CartListDTO getCartItem(@Param("orderNo") Long orderNo, @Param("productCode") String productCode);
    CartListDTO memberView(@Param("username") String username);
}
