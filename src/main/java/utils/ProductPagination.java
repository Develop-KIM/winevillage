package utils;

public class ProductPagination {
	public static String pagination(
			int totalRecordCount,
			int pageSize,
			int blockPage,
			int pageNum,
			String page) {
			
			String pagingStr = "";
			
			//1.전체페이지 구하기
			int totalPage = (int)(Math.ceil(((double)totalRecordCount/pageSize)));
			
			/*2.현재페이지번호를 통해 이전 페이지블럭에
			해당하는 페이지를 구한다.
			*/
			int intTemp = 
				(((pageNum-1) / blockPage) * blockPage) + 1;
			
			//3.처음페이지 바로가기 & 이전페이지블럭 바로가기
				pagingStr += "<div class='pagination'>";
				pagingStr += "<a href='"+page+"pageNum="+
							 (intTemp-blockPage)+ "'>" + "<</a>";
			
			//페이지표시 제어를 위한 변수
			int blockCount = 1;
			/*
			4.페이지를 뿌려주는 로직 : blockPage의 수만큼 또는
				마지막페이지가 될때까지 페이지를 출력한다.
			*/
			while(blockCount<=blockPage && intTemp<=totalPage)
			{
				if(intTemp==pageNum) {
					pagingStr += "<a class='current'>"+intTemp+"</span>";
				}
				else {
					pagingStr += "<a href='" + page
						+"pageNum="+intTemp+"'>"+
						intTemp+"</a>";
				}
				intTemp++;
				blockCount++;
			} 
			
			//5.다음페이지블럭 & 마지막페이지 바로가기
			{
				pagingStr += "<a href='"+page+"pageNum="+
												intTemp+"'>"
					+ "></a>";
				pagingStr += "</div>";
			}
			
			return pagingStr;
		}

}
