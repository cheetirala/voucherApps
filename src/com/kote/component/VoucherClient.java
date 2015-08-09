package com.kote.component;

import java.io.Serializable;
import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.kote.object.VoucherList;

@Component( "voucherClient" )
public class VoucherClient implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	RestTemplate restTemplate;
	final String urlPath="http://api.tradedoubler.com/1.0/vouchers?token=";
	String countryTokenValue;
	
	@Resource(name="countryProperties")
	  private Properties countryProperties;
	
	public VoucherList getVoucherList(String pageType,String data){
		VoucherList voucherList=null;
		try{
	 if(pageType.equals("main")){		
		 countryTokenValue = countryProperties.getProperty(data);	
	 voucherList = restTemplate.getForObject(urlPath+countryTokenValue, VoucherList.class);
	 }else if(pageType.equals("serach")){
		 voucherList = restTemplate.getForObject("http://api.tradedoubler.com/1.0/vouchers;keywords="+data+"?token="+countryTokenValue, VoucherList.class);
	 }
		}
	catch(Exception e){
		e.printStackTrace();
	}
	return voucherList;
	}
}
