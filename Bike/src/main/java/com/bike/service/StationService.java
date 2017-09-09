package com.bike.service;

import com.bike.model.Bike;
import com.bike.model.Station;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 苏雄伟
 * @description:
 * @create 2017-09-09 14:36
 **/
@Service
public interface StationService {
    int addStations(Station station);
    Station getByBikeId(int id);
    int dispatch(@Param("bikeIds") List<Long> bikeIds, @Param("stationId") int stationId);
}