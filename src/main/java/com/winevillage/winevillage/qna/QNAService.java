package com.winevillage.winevillage.qna;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QNAService {
	public int getTotalCount(ParameterDTO parameterDTO);
	public ArrayList<QNADTO> listPage(ParameterDTO parameterDTO);
	public int qnaWrite(QNADTO qnaDTO);
	public QNADTO qnaView(QNADTO qnaDTO);
	public QNADTO memberView(String userId);
	public int qnaEdit(QNADTO qnaDTO);
	public int qnaDelete(QNADTO qnaDTO);
	
	public int qnaAnswerWrite(QNADTO qnaDTO);
	public QNADTO qnaAnswerView(QNADTO qnaDTO);
	public int qnaAnswerEdit(QNADTO qnaDTO);
	public int qnaAnswerDelete(QNADTO qnaDTO);
}
