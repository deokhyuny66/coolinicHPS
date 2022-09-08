package com.freeze.mapper;

import java.util.List;
import com.freeze.model.CalcModel;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CalcMapper {
	List<CalcModel> getCalc();
}
