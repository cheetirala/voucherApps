package com.kote.object;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class VoucherList {

	private List<Voucher> voucher = new ArrayList<Voucher>();

	public List<Voucher> getVoucher() {
		return voucher;
	}

	public void setVoucher(List<Voucher> voucher) {
		this.voucher = voucher;
	}

	
	
}
