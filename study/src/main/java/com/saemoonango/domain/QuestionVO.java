package com.saemoonango.domain;

public class QuestionVO {
	
	private Integer Qno;
	private String Question;
	private String RightAnswer;
	private Integer Point;
	private Integer Lno;
	private Integer Cno;
	
	
	
	
	public Integer getCno() {
		return Cno;
	}
	public void setCno(Integer cno) {
		Cno = cno;
	}
	public Integer getQno() {
		return Qno;
	}
	public void setQno(Integer qno) {
		Qno = qno;
	}
	public String getQuestion() {
		return Question;
	}
	public void setQuestion(String question) {
		Question = question;
	}
	public String getRightAnswer() {
		return RightAnswer;
	}
	public void setRightAnswer(String rightAnswer) {
		RightAnswer = rightAnswer;
	}
	public Integer getPoint() {
		return Point;
	}
	
	public void setPoint(Integer point) {
		Point = point;
	}
	public Integer getLno() {
		return Lno;
	}
	public void setLno(Integer lno) {
		Lno = lno;
	}
	@Override
	public String toString() {
		return "QuestionVO [Qno=" + Qno + ", Question=" + Question + ", RightAnswer=" + RightAnswer + ", Point=" + Point
				+ ", Lno=" + Lno + "]";
	}
	
	

}
