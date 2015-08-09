package com.kote.object;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Voucher implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@XmlElement
	private String code;
	

	@XmlElement
	private String startDate;
	
	@XmlElement
	private String endDate;
	
	@XmlElement
	private String title;
	
	@XmlElement
	private String description;
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@XmlElement
	private String defaultTrackUri;
	
	@XmlElement
	private String logoPath;
	
	
	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getEndDate() {
		Long l = Long.parseLong(endDate);
		Date date = new Date(l);
		DateFormat format = new SimpleDateFormat("dd/MM/yyyy");

		return format.format(date);
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDefaultTrackUri() {
		return defaultTrackUri;
	}

	public void setDefaultTrackUri(String defaultTrackUri) {
		this.defaultTrackUri = defaultTrackUri;
	}

	public String getLogoPath() {
		return logoPath;
	}

	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
