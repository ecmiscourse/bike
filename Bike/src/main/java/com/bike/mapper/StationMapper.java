package com.bike.mapper;

import com.bike.model.Bike;
import com.bike.model.Station;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StationMapper {
    int addStations(Station station);
    Station getByBikeId(int id);
    int dispatch(@Param("bikeIds") List<Long> bikeIds, @Param("stationId") int stationId);
}
