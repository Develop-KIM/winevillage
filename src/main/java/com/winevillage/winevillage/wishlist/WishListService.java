package com.winevillage.winevillage.wishlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class WishListService {
	
	private final WishListMapper wishListMapper;
	
	@Autowired
	public WishListService(WishListMapper wishListMapper) {
		this.wishListMapper = wishListMapper;
	}
	
	public List<WishListDTO> WishListView(String MemberNo) {
		return wishListMapper.WishListView(MemberNo);
	}
	
	public boolean addToWishList(String productCode, String memberNo) {
		try {
			wishListMapper.addToWishList(productCode, memberNo);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteWishList(String productCode, String memberNo) {
		try {
			wishListMapper.deleteWishList(productCode, memberNo);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	public List<WishListDTO> getWishList(String memberNo) {
        return wishListMapper.getWishList(memberNo);
    }
	
	public String getMemberNo(String user_id) {
        return wishListMapper.getMemberNo(user_id);
    }
	
	public int wishListCount(String memberNo) {
		return wishListMapper.wishListCount(memberNo);
	}
	
	public void deleteWishItem(String memberNo, String productCode) {
        wishListMapper.deleteWishItem(memberNo, productCode);
    }
	
}
