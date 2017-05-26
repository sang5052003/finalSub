package domain;

public class Reply {
	
	private int replyNo;
	private String replyContent;
	private Customer customer;
	private int postNo;
	
	public Reply() {}

	public Reply(int replyNo, String replyContent, Customer customer, int postNo) {
		super();
		this.replyNo = replyNo;
		this.replyContent = replyContent;
		this.customer = customer;
		this.postNo = postNo;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", replyContent=" + replyContent + ", customer=" + customer + ", postNo="
				+ postNo + "]";
	}

	
	

}
