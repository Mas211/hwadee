package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.RewardAndPunish;

public interface RewardAndPunishMapper {
	// 增
	int insert(RewardAndPunish rewardAndPunish);

	// 删
	int delete(int rewardAndPunishId);

	// 查
	RewardAndPunish findById(int rewardAndPunishId);

	// 改
	int update(RewardAndPunish rewardAndPunish);
	
	List<RewardAndPunish> getByTId(int rpTId);
	
	List<RewardAndPunish> findByPar(int parId);
	
	List<RewardAndPunish> findByStu(int stuId);
}
