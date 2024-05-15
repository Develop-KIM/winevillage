package com.winevillage.winevillage.chat;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChatService {
	public int getTotalCount(ParameterDTO parameterDTO);
	public ArrayList<ChatDTO> listPage(ParameterDTO parameterDTO);
	public int chatWrite(ChatDTO qnaDTO);
//	public ChatDTO chatView(ChatDTO qnaDTO);
	public ChatDTO memberView(String userId);
	public int chatDelete(ChatDTO qnaDTO);
}
