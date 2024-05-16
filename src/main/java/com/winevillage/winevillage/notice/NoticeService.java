package com.winevillage.winevillage.notice;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeService {
	public int getTotalCount(ParameterDTO parameterDTO);
	public ArrayList<NoticeDTO> listPage(ParameterDTO parameterDTO);
	public int noticeWrite(NoticeDTO noticeDTO);
	public NoticeDTO noticeView(NoticeDTO noticeDTO);
	public int noticeEdit(NoticeDTO noticeDTO);
	public int noticeDelete(NoticeDTO noticeDTO);
}
