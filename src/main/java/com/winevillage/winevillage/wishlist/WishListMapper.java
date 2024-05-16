package com.winevillage.winevillage.wishlist;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface WishListMapper {
    void addToWishList(@Param("productCode") String productCode, @Param("memberNo") String memberNo);
    void deleteWishList(@Param("productCode") String productCode, @Param("memberNo") String memberNo);
    List<WishListDTO> getWishList(String memberNo);
    String getMemberNo(String user_id);
}
