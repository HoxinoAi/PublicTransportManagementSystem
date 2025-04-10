package com.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Value;
import java.util.Map;
import org.springframework.web.client.RestTemplate;
import com.service.MapService;

@Service("mapService")
public class MapServiceImpl implements MapService {
    
    @Value("${amap.key}")
    private String amapKey;
    
    private final RestTemplate restTemplate = new RestTemplate();
    
    @Override
    public Map<String, Object> searchNearby(Double longitude, Double latitude, String type, Integer radius) {
        String url = String.format(
            "https://restapi.amap.com/v3/place/around?key=%s&location=%f,%f&types=%s&radius=%d",
            amapKey, longitude, latitude, type, radius
        );
        return restTemplate.getForObject(url, Map.class);
    }
    
    @Override
    public Map<String, Object> getRoute(Double startLng, Double startLat, Double endLng, Double endLat) {
        String url = String.format(
            "https://restapi.amap.com/v3/direction/transit/integrated?key=%s&origin=%f,%f&destination=%f,%f&city=重庆",
            amapKey, startLng, startLat, endLng, endLat
        );
        return restTemplate.getForObject(url, Map.class);
    }
}
