package Service_impl;

import Mapper.SightMapper;
import PO.Sight;
import Service.SightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/11 - 13:49
 */

@Service
public class SightServiceImpl implements SightService {

    @Autowired
    private SightMapper sightMapper;

    @Override
    public List<Sight> findSightByName(Sight sight){
        return sightMapper.findSightByName(sight);
    }
}
