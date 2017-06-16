package domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;

	private int displayPageNum = 10;

	private Pager pager;

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;

		System.out.println("totalcount : " + totalCount);

		setData();
	}

	private void setData() {
		
		
		
		endPage = (int) (Math.ceil(pager.getPage() / (double) displayPageNum) * displayPageNum); // 모든
																									// 페이지수에
																									// 대응하기

		// ????
		System.out.println("===setData2===");
		System.out.println((Math.ceil(pager.getPage() / (double) displayPageNum)));
		System.out.println(displayPageNum);
		//System.out.println(pager.getPage());
		System.out.println(pager);
		System.out.println(endPage); //1

		startPage = (endPage - displayPageNum) + 1; // 시작 페이지

		int tempEndPage = (int) (Math.ceil(totalCount / (double) pager.getPerPageNum()));
	
		System.out.println(Math.ceil(totalCount / (double) pager.getPerPageNum()));
		System.out.println(totalCount); //8
		System.out.println(pager.getPerPageNum());
		System.out.println(tempEndPage);

		if (endPage > tempEndPage) { // 최대값 정의
			endPage = tempEndPage;
		}
		
		System.out.println(endPage);

		prev = startPage == 1 ? false : true; // 1일 때는 << 끔

		next = endPage * pager.getPerPageNum() >= totalCount ? false : true; // 총갯수보다

	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	public String makeQuery(int page) { // 동적 쿼리

		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", pager.getPerPageNum()).build();

		return uriComponents.toUriString();
	}

	// sangki's
	public String makeQueryForBeautyTip(int page, BeautyTipCategory category) { // 동적
																				// 쿼리

		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", pager.getPerPageNum()).queryParam("category", category).build();

		return uriComponents.toUriString();
	}
	// sangki's
	public String makeSearchForBeautyTip(int page) {

		System.out.println("===makeSearchForBeautyTip===");
		System.out.println(page);

		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", pager.getPerPageNum())
				.queryParam("searchType", ((BeautyTipPager) pager).getSearchType())
				.queryParam("keyword", ((BeautyTipPager) pager).getKeyword()).build();

		System.out.println(uriComponents.toUriString());

		return uriComponents.toUriString();
	}
	
	public String makeSearch(int page) {

		System.out.println("===makeSearch===");
		System.out.println(page);

		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", pager.getPerPageNum())
				.queryParam("searchType", ((SearchPager) pager).getSearchType())
				.queryParam("keyword", ((SearchPager) pager).getKeyword()).build();

		System.out.println(uriComponents.toUriString());

		return uriComponents.toUriString();
	}

	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", pager=" + pager + "]";
	}

}
