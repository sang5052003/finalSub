package domain;

import java.util.List;

//ajax page beautyTip
public class BeautyTipForPage {

	private List<BeautyTip> beautyTipList;
	private PageMaker pageMaker;
	
	public List<BeautyTip> getBeautyTipList() {
		return beautyTipList;
	}
	public void setBeautyTipList(List<BeautyTip> beautyTipList) {
		this.beautyTipList = beautyTipList;
	}
	public PageMaker getPageMaker() {
		return pageMaker;
	}
	public void setPageMaker(PageMaker pageMaker) {
		this.pageMaker = pageMaker;
	}
}
