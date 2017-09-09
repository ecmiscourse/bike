package com.bike.service.impl;

import com.bike.mapper.StationMapper;
import com.bike.model.Bike;
import com.bike.model.Station;
import com.bike.service.StationService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author 苏雄伟
 * @description:
 * @create 2017-09-09 14:41
 **/

public class StationServiceImpl implements StationService{
    @Autowired
    private StationMapper stationMapper;
    @Override
    public int addStations(Station station) {
        return stationMapper.addStations(station);
    }

    @Override
    public Station getByBikeId(int id) {
        return stationMapper.getByBikeId(id);
    }

    @Override
    public int dispatch(List<Long> bikeIds, int stationId) {
        return stationMapper.dispatch(bikeIds, stationId);
    }
}