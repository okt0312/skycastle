package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.admin.model.dto.AdReservationDto;

public interface AdSalesService {

	ArrayList<AdReservationDto> adSelectSalesList(AdReservationDto adr);
}
