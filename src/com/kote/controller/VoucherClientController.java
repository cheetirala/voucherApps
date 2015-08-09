package com.kote.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kote.component.VoucherClient;
import com.kote.object.Voucher;
import com.kote.object.VoucherList;

@Controller
@SessionAttributes("voucherList")
@Scope("session")
public class VoucherClientController implements Serializable{

	private static final long serialVersionUID = 1L;
	@Autowired
	VoucherClient voucherClient;
	List<Voucher> voucherCacheMap = new ArrayList<Voucher>();

	@RequestMapping(value = "/redirect", method = RequestMethod.GET)
	public String getCountryList() {

		return "countriesList";
	}

	@RequestMapping(value = "/getVoucher", method = RequestMethod.POST)
	public ModelAndView getVoucherList(@RequestParam String country,
			ModelMap model) {
		VoucherList voucherList = voucherClient.getVoucherList("main", country);
		voucherCacheMap.clear();
		voucherCacheMap = voucherList.getVoucher();
		model.put("voucherSize", voucherCacheMap.size());
		model.put("voucherList", setMaxPageData(1, 10, voucherCacheMap));
		return new ModelAndView("voucherDetail", model);

	}

	@RequestMapping(value = "/getSearchData", method = RequestMethod.POST)
	public ModelAndView getSearchList(@RequestParam String serachData,
			ModelMap model) {

		VoucherList voucherList = voucherClient.getVoucherList("serach",
				serachData);
		voucherCacheMap.clear();
		voucherCacheMap = voucherList.getVoucher();
		model.put("voucherSize", voucherCacheMap.size());
		model.put("voucherList", setMaxPageData(1, 4, voucherCacheMap));
		return new ModelAndView("voucherDetail", model);

	}

	@RequestMapping(value = "/getNextPage", method = RequestMethod.GET)
	public @ResponseBody
	List<Voucher> getPaginationList(@RequestParam int index, ModelMap model) {
		List<Voucher> vlist = setMaxPageData(index, 10, voucherCacheMap);
		model.put("voucherList", vlist);
		return vlist;
	}

	private List<Voucher> setMaxPageData(int index, int size,
			List<Voucher> voucherList) {
		List<Voucher> vList = new ArrayList<Voucher>();
		int start = index * size - (size - 1);
		int end = index * size;
		if (end >= voucherList.size()) {
			end = voucherList.size();
		}
		for (int i = start; i <= end; i++) {
			vList.add(voucherList.get(i - 1));
		}

		return vList;

	}
}
