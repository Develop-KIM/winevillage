package com.winevillage.winevillage.faq;

import lombok.Data;

@Data
public class FAQDTO {
	private int faq_no;
	private String faq_classified;
	private String new_faq_classified;
	private String faq_title;
	private String faq_content;
	private String faq_count;
}
