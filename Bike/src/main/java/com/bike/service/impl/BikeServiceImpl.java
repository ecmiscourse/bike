package com.bike.service.impl;

import com.bike.mapper.BikeMapper;
import com.bike.model.Bike;
import com.bike.service.BikeService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author 苏雄伟
 * @description:
 * @create 2017-09-09 14:40
 **/

public class BikeServiceImpl implements BikeService {
    @Autowired
    private BikeMapper bikeMapper;
    @Override
    public Bike getBikeById(int id) {
        return bikeMapper.getBikeById(id);
    }

    @Override
    public Bike getBikeByStationId(int id) {
        return bikeMapper.getBikeByStationId(id);
    }

    @Override
    public int updateBikeStatus(int id, int status) {
        return bikeMapper.updateBikeStatus(id, status);
    }


}