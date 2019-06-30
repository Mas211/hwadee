package com.jxt.mapper;

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
}
