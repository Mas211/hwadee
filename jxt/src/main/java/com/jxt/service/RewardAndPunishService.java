package com.jxt.service;

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
}
