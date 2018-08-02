package com.spstes.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spstes.dao.CatDao;
import com.spstes.model.Cat;
import com.spstes.service.CatService;

@Service
public class CatServiceImpl implements CatService {
	@Autowired
	private CatDao catDao;

	@Override
	public Cat findCatById(int id) {
		return catDao.findCatById(id);
	}
}
