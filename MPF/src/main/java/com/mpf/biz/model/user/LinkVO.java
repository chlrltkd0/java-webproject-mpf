package com.mpf.biz.model.user;

public class LinkVO {

	private int id;
	private int userId;
	private	String facebook;
	private String google;
	private String twitter;
	private String instagram;
	private String github;
	
	public LinkVO() {
		super();
	}
	public LinkVO(int id, int userId, String facebook, String google, String twitter, String instagram,
			String github) {
		super();
		this.id = id;
		this.userId = userId;
		this.facebook = facebook;
		this.google = google;
		this.twitter = twitter;
		this.instagram = instagram;
		this.github = github;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getGoogle() {
		return google;
	}
	public void setGoogle(String google) {
		this.google = google;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getInstagram() {
		return instagram;
	}
	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}
	public String getGithub() {
		return github;
	}
	public void setGithub(String github) {
		this.github = github;
	}
	@Override
	public String toString() {
		return "UserLinkVO [id=" + id + ", userId=" + userId + ", facebook=" + facebook + ", google=" + google
				+ ", twitter=" + twitter + ", instagram=" + instagram + ", github=" + github + "]";
	}
}
