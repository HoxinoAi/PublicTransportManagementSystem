package com.service;

import java.util.Map;

public interface MapService {
    Map<String, Object> searchNearby(Double longitude, Double latitude, String type, Integer radius);
    Map<String, Object> getRoute(Double startLng, Double startLat, Double endLng, Double endLat);
}
