package com.helpdesk;

public class quest {
	
	private int qid;
	private String Uniquecode;
	private String Useremail;
	private String Description;
	private String Question;
	
	//Constructor
	public quest(int qid, String uniquecode, String useremail, String description, String question) {
		
		this.qid = qid;
		Uniquecode = uniquecode;
		Useremail = useremail;
		Description = description;
		Question = question;
	}

	//get Question ID
	public int getQid() {
		return qid;
	}


	//get unique code
	public String getUniquecode() {
		return Uniquecode;
	}



	//get User email
	public String getUseremail() {
		return Useremail;
	}



	//get description
	public String getDescription() {
		return Description;
	}


	//get question
	public String getQuestion() {
		return Question;
	}



	

	

}
