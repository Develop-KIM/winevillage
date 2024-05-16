package com.winevillage.winevillage.faq;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FAQService {
	public int getTotalCount(ParameterDTO parameterDTO);
	public ArrayList<FAQDTO> listPage(ParameterDTO parameterDTO);
	public ArrayList<FAQDTO> faqCategory(ParameterDTO parameterDTO);
	public int faqWrite(FAQDTO faqDTO);
	public int categoryEdit(FAQDTO faqDTO, String new_faq_classified);
	public int faqCategoryWrite(FAQDTO faqDTO);
	public FAQDTO faqView(FAQDTO faqDTO);
	public int categoryCount(ParameterDTO parameterDTO);
	public int faqEdit(FAQDTO faqDTO);
	public int faqDelete(FAQDTO faqDTO);
}
