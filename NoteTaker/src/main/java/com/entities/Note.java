package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Note")
public class Note {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	@Column(length=1500)
	private String content;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	private Date addedDate;
	public Note(String title, String content, Date addedDate) {
		super();
		this.id =new Random().nextInt(10000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", addedDate=" + addedDate + "]";
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
