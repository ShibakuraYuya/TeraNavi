package ttc.bean;

import java.util.List;

public class BlogBean implements Bean{
    private String headerPath;
    private String title;
    private String explanation;
    private List articles;
	private String status;
	private String userId;

    /**
    * Returns value of headerPath
    * @return
    */
    public String getHeaderPath() {
    	return headerPath;
    }

    /**
    * Sets new value of headerPath
    * @param
    */
    public void setHeaderPath(String headerPath) {
    	this.headerPath = headerPath;
    }

    /**
    * Returns value of title
    * @return
    */
    public String getTitle() {
    	return title;
    }

    /**
    * Sets new value of title
    * @param
    */
    public void setTitle(String title) {
    	this.title = title;
    }

    /**
    * Returns value of explanation
    * @return
    */
    public String getExplanation() {
    	return explanation;
    }

    /**
    * Sets new value of explanation
    * @param
    */
    public void setExplanation(String explanation) {
    	this.explanation = explanation;
    }

    /**
    * Returns value of articles
    * @return
    */
    public List getArticles() {
    	return articles;
    }

    /**
    * Sets new value of articles
    * @param
    */
    public void setArticles(List articles) {
    	this.articles = articles;
    }

	public void setStatus(String status){
		this.status = status;
	}

	public String getStatus(){
		return status;
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
}
