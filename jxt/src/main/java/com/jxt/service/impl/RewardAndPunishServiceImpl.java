package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.RewardAndPunish;
import com.jxt.mapper.RewardAndPunishMapper;
import com.jxt.service.RewardAndPunishService;

@Service
public class RewardAndPunishServiceImpl implements RewardAndPunishService {
	@Autowired
	private RewardAndPunishMapper rewardAndPunishMapper;

	@Override
	public int add(RewardAndPunish rewardAndPunish) {
		// TODO Auto-generated method stub
		int rows = rewardAndPunishMapper.insert(rewardAndPunish);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return rewardAndPunish.getRewardAndPunisId();
	}

	@Override
	public int delete(int rewardAndPunishId) {
		// TODO Auto-generated method stub
		return rewardAndPunishMapper.delete(rewardAndPunishId);
	}

	@Override
	public RewardAndPunish getRewardAndPunishById(int rewardAndPunishId) {
		// TODO Auto-generated method stub
		return rewardAndPunishMapper.findById(rewardAndPunishId);
	}

	@Override
	public int update(RewardAndPunish rewardAndPunish) {
		// TODO Auto-generated method stub
		return rewardAndPunishMapper.update(rewardAndPunish);
	}

}
