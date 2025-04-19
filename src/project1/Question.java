package project1;

public class Question 
{
	private int id;
	private String question;
	private String optin1;
	private String optin2;
	private String optin3;
	private String optin4;
	private String answar;
	
	
	
	public Question(int id, String question, String optin1, String optin2, String optin3, String optin4,
			String answar) {
		
		this.id = id;
		this.question = question;
		this.optin1 = optin1;
		this.optin2 = optin2;
		this.optin3 = optin3;
		this.optin4 = optin4;
		this.answar = answar;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOptin1() {
		return optin1;
	}
	public void setOptin1(String optin1) {
		this.optin1 = optin1;
	}
	public String getOptin2() {
		return optin2;
	}
	public void setOptin2(String optin2) {
		this.optin2 = optin2;
	}
	public String getOptin3() {
		return optin3;
	}
	public void setOptin3(String optin3) {
		this.optin3 = optin3;
	}
	public String getOptin4() {
		return optin4;
	}
	public void setOptin4(String optin4) {
		this.optin4 = optin4;
	}
	public String getAnswar() {
		return answar;
	}
	public void setAnswar(String answar) {
		this.answar = answar;
	}
	@Override
	public String toString() {
		return "Question [id=" + id + ", question=" + question + ", optin1=" + optin1 + ", optin2=" + optin2
				+ ", optin3=" + optin3 + ", optin4=" + optin4 + ", answar=" + answar + "]";
	}
	
	

}
