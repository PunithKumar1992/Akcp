package com.appfone.akcp.Pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="akcpaboutusimage")
public class Akcpaboutusimage {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="about_id")
	private int about_id;
	@Column(name="about_image")
	private String about_image;

	@Transient
	private MultipartFile aboutfile;

	public int getAbout_id() {
		return about_id;
	}

	public void setAbout_id(int about_id) {
		this.about_id = about_id;
	}

	public String getAbout_image() {
		return about_image;
	}

	public void setAbout_image(String about_image) {
		this.about_image = about_image;
	}

	public MultipartFile getAboutfile() {
		return aboutfile;
	}

	public void setAboutfile(MultipartFile aboutfile) {
		this.aboutfile = aboutfile;
	}
	
	
	
}
