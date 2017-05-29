package domain;

public class Pager {

	private int page; // 페이지 개수
	private int perPageNum; // 몇개씩 보여줄지

	public Pager() {
		this.page = 1; // 초기값
		this.perPageNum = 10; // 10개씩 보여주기
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {

		if (page <= 0) {
			this.page = 1; // 0보다 작은값 나올 경우 1로
			return;
		}

		this.page = page;
	}

	// mybatis sql mapper
	public int getPerPageNum() {

		return this.perPageNum;
	}

	public void setPerPageNum(int perPageNum) {

		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10; // 10으로 고정
			return;
		}

		this.perPageNum = perPageNum;
	}

	// mybatis sql mapper
	public int getPageStart() {

		return (this.page - 1) * perPageNum;
	}

	

	@Override
	public String toString() {
		return "pager [page=" + page + ", perPageNum=" + perPageNum + "]";
	}

}
