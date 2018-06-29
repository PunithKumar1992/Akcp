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
@Table(name="akcphomeaboutusimage")
public class Akcphomeaboutusimage {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="homeabout_id")
	private int homeabout_id;
	
	@Column(name="homeabout_image")
	private String homeabout_image;
	
	@Transient
	private MultipartFile homeaboutfile;

	public int getHomeabout_id() {
		return homeabout_id;
	}

	public void setHomeabout_id(int homeabout_id) {
		this.homeabout_id = homeabout_id;
	}

	public String getHomeabout_image() {
		return homeabout_image;
	}

	public void setHomeabout_image(String homeabout_image) {
		this.homeabout_image = homeabout_image;
	}

	public MultipartFile getHomeaboutfile() {
		return homeaboutfile;
	}

	public void setHomeaboutfile(MultipartFile homeaboutfile) {
		this.homeaboutfile = homeaboutfile;
	}
	
	

	

}
