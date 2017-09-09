package com.bike.service;

import com.bike.model.Bike;
import org.springframework.stereotype.Service;

/**
 * @author 苏雄伟
 * @description:
 * @create 2017-09-09 14:36
 **/
@Service
public interface BikeService {
    Bike getBikeById(int id);
    Bike getBikeByStationId(int id);
    int updateBikeStatus(int id,int status);
}