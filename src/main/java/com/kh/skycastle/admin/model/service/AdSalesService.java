package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.admin.model.dto.AdReservationDto;
import com.kh.skycastle.admin.model.dto.SalesChart;

public interface AdSalesService {

	ArrayList<SalesChart> selectSalesChart();
	
	ArrayList<AdReservationDto> adSelectSalesList(AdReservationDto adr);
	
}
