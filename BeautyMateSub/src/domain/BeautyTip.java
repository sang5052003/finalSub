package domain;

import java.util.List;

public class BeautyTip {
	
	private int beautyTipNo;
	private String beautyTipTitle;
	private String image;
	private String beautyTipContent;
	private String video;
	private Customer customer;
	private BeautyTipCategory category;
	private List<Reply> beautyTipReplys;
	
	public BeautyTip(){}
	
	
	public BeautyTip(int beautyTipNo, String beautyTipTitle, String image, String beautyTipContent, String video,
			Customer customer, BeautyTipCategory category, List<Reply> beautyTipReplys) {
		super();
		this.beautyTipNo = beautyTipNo;
		this.beautyTipTitle = beautyTipTitle;
		this.image = image;
		this.beautyTipContent = beautyTipContent;
		this.video = video;
		this.customer = customer;
		this.category = category;
		this.beautyTipReplys = beautyTipReplys;
	}


	@Override
	public String toString() {
		return "BeautyTip [beautyTipNo=" + beautyTipNo + ", beautyTipTitle=" + beautyTipTitle + ", image=" + image
				+ ", beautyTipContent=" + beautyTipContent + ", video=" + video + ", customer=" + customer
				+ ", category=" + category + ", beautyTipReplys=" + beautyTipReplys + "]";
	}
	
	
	
	
	
	

}
