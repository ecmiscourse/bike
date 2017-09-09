package com.bike.mapper;

import com.bike.model.Bike;
import org.apache.ibatis.annotations.Param;

public interface BikeMapper {
    Bike getBikeById(int id);
    Bike getBikeByStationId(int id);
    int updateBikeStatus(@Param("id") int id,@Param("status") int status);
}
