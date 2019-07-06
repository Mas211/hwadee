package com.jxt.service;

import java.util.List;

import com.jxt.entity.RewardAndPunish;

public interface RewardAndPunishService {
	// 增
	int add(RewardAndPunish rewardAndPunish);

	// 删
	int delete(int rewardAndPunishId);

	// 查
	RewardAndPunish getRewardAndPunishById(int rewardAndPunishId);

	// 改
	int update(RewardAndPunish rewardAndPunish);
	
	String getName(int id);
	
	List<RewardAndPunish> getByTId(int rpTId);
	
	List<RewardAndPunish> findByPar(int parId);
	
	List<RewardAndPunish> findByStu(int stuId);
}
