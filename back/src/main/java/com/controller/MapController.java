package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.service.MapService;
import com.utils.R;
import java.util.Map;

@RestController
@RequestMapping("/map")
public class MapController {
    
    @Autowired
    private MapService mapService;
    
    @GetMapping("/search")
    public R searchNearby(
        @RequestParam Double longitude,
        @RequestParam Double latitude,
        @RequestParam String type,
        @RequestParam(defaultValue = "1000") Integer radius
    ) {
        Map<String, Object> result = mapService.searchNearby(longitude, latitude, type, radius);
        return R.ok().put("data", result);
    }
    
    @GetMapping("/route")
    public R getRoute(
        @RequestParam Double startLng,
        @RequestParam Double startLat,
        @RequestParam Double endLng,
        @RequestParam Double endLat
    ) {
        Map<String, Object> result = mapService.getRoute(startLng, startLat, endLng, endLat);
        return R.ok().put("data", result);
    }
}
