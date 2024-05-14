package com.winevillage.winevillage.cart;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CartListMapper {
    void addProductToMemberCart(@Param("productCode") String productCode, @Param("memberNo") String memberNo);
    void addProductToNonMemberCart(Map<String, Object> params);
    List<CartListDTO> getCartListByCookieId(@Param("cookieId") String cookieId);
    List<CartListDTO> getCartListByMemberNo(String memberNo);
    CartListDTO getProductByCode(@Param("productCode") String productCode);
    void updateOrderQuantity(@Param("orderNo") Long orderNo, 
    						@Param("productCode") String productCode,
    						@Param("orderAmount") int orderAmount);
    CartListDTO getCartItem(@Param("orderNo") Long orderNo, @Param("productCode") String productCode);
    String getMemberNo(String user_id);
    boolean updateMemberCart(@Param("cookieId") String cookieId, @Param("memberNo") String memberNo);
}
