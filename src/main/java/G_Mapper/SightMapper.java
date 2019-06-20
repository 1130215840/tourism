package G_Mapper;

import G_POJO.Sight;
import G_POJO.SightExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SightMapper {
    long countByExample(SightExample example);

    int deleteByExample(SightExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Sight record);

    int insertSelective(Sight record);

    List<Sight> selectByExampleWithBLOBs(SightExample example);

    List<Sight> selectByExample(SightExample example);

    Sight selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Sight record, @Param("example") SightExample example);

    int updateByExampleWithBLOBs(@Param("record") Sight record, @Param("example") SightExample example);

    int updateByExample(@Param("record") Sight record, @Param("example") SightExample example);

    int updateByPrimaryKeySelective(Sight record);

    int updateByPrimaryKeyWithBLOBs(Sight record);

    int updateByPrimaryKey(Sight record);
}