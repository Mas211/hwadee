package com.jxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Account;
import com.jxt.entity.RewardAndPunish;
import com.jxt.mapper.AccountMapper;
import com.jxt.mapper.RewardAndPunishMapper;
import com.jxt.service.RewardAndPunishService;

@Service
public class RewardAndPunishServiceImpl implements RewardAndPunishService {
	@Autowired
	private RewardAndPunishMapper rewardAndPunishMapper;
	
	@Autowired
	private AccountMapper accountMapper;

	@Override
	public int add(RewardAndPunish rewardAndPunish) {
		// TODO Auto-generated method stub
		int rows = rewardAndPunishMapper.insert(rewardAndPunish);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return rewardAndPunish.getRewardAndPunishId();
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

	@Override
	public String getName(int id) {
		// TODO Auto-generated method stub
		Account account = accountMapper.findById(id);
		return account.getAccountName();
	}

	@Override
	public List<RewardAndPunish> getByTId(int rpTId) {
		// TODO Auto-generated method stub
		return rewardAndPunishMapper.getByTId(rpTId);
	}

	@Override
	public List<RewardAndPunish> findByPar(int parId) {
		// TODO Auto-generated method stub
		return rewardAndPunishMapper.findByPar(parId);
	}

	@Override
	public List<RewardAndPunish> findByStu(int stuId) {
		// TODO Auto-generated method stub
		return rewardAndPunishMapper.findByStu(stuId);
	}

}
