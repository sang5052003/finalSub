package domain;

public class BeautyTipPager extends Pager {

	private BeautyTipCategory category;
	
	private String searchType;
	private String keyword;

	public BeautyTipPager() {
		
		this.page = 1; // 초기값
		this.perPageNum = 10; // 3개씩 보여주기
		this.pagStart = 1;
		this.pagEnd = 10;
		this.searchType = null;
		this.keyword = null;
	}
	
	public BeautyTipPager(BeautyTipCategory category, int curPage) {

		this();
		this.category = category;
		this.page = curPage;
	}
	
	public void init(){
		
		this.page = 1; // 초기값
		this.perPageNum = 10; // 3개씩 보여주기
		this.pagStart = 1;
		this.pagEnd = 10;
		this.category = BeautyTipCategory.makeupInformation;
		this.searchType = null;
		this.keyword = null;
	}
	
	@Override
	public void setPage(int page) {
		
		if (page <= 0) {
			this.page = 1; // 0보다 작은값 나올 경우 1로
			return;
		}

		pagStart = page * 10 - 9;
		pagEnd = page * 10;

		this.page = page;
		
	}
	
	@Override
	public void setPerPageNum(int perPageNum) {

		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10; // 10으로 고정
			return;
		}

		this.perPageNum = perPageNum;

	}
	
	public BeautyTipCategory getCategory() {
		return category;
	}

	public void setCategory(BeautyTipCategory category) {
		this.category = category;
	}
	
	//
	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "BeautyTipPager [category=" + category + ", page=" + page + ", perPageNum=" + perPageNum + ", pagStart="
				+ pagStart + ", pagEnd=" + pagEnd + "]";
	}
	//
	
}
