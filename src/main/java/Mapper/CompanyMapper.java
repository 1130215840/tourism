package Mapper;


import PO.Company;

public interface CompanyMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Company record);

    int insertSelective(Company record);


}