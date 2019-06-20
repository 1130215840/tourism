package Service;

import PO.Sight;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/11 - 13:46
 */
public interface SightService {

    List<Sight> findSightByName(Sight sight);

}
