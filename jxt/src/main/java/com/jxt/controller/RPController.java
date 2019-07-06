package com.jxt.controller;


import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Account;
import com.jxt.entity.RewardAndPunish;
import com.jxt.service.RewardAndPunishService;

@Controller
public class RPController {

	@Autowired
	private RewardAndPunishService rps;
	
	@GetMapping("/newRp")
	public String newRp() {
		
		return "RP/newRp";
	}
	
	@PostMapping("/newRp")
	public String saveRp(RewardAndPunish rp, HttpServletRequest request) {
		
		rp.setRpTId(((Account) (request.getSession().getAttribute("account"))).getAccountId());
		
		rp.setRpTime(new Timestamp(System.currentTimeMillis()));
		
		rps.add(rp);
		
		return "redirect:/rpManage";
	}
	
	@GetMapping("/rpManage")
	public String rpManage(Model model, HttpServletRequest request) {
		int rpTId = ((Account) (request.getSession().getAttribute("account"))).getAccountId();
		
		List<RewardAndPunish> rp = rps.getByTId(rpTId);
		
		model.addAttribute("rp", rp);
		return "RP/rpManage";
	}
	
	@GetMapping("/updateRp/{rpId}")
	public String updateRp(@PathVariable("rpId") int rpId, Model model) {
		
		RewardAndPunish rp = rps.getRewardAndPunishById(rpId);
		
		String name = rps.getName(rp.getRpStuId());
		model.addAttribute("rp", rp);
		model.addAttribute("stuName", name);
		return "RP/updateRp";
	}
	
	@PostMapping("/updateRp/{rpId}")
	public String checkUpdateRp(RewardAndPunish rp) {
		rps.update(rp);
		
		return "redirect:/rpManage";
	}
	
	@GetMapping("/deleteRp/{id}")
	public String deleteRp(@PathVariable("id") int id) {
		
		rps.delete(id);
		
		return "redirect:/rpManage";
	}
	
	@GetMapping("/stuRp")
	public String stuRp(HttpServletRequest request, Model model) {
		
		List<RewardAndPunish> rp;
		
		Account user = (Account) (request.getSession().getAttribute("account"));
		int id = user.getAccountId();
		if (user.getRoleId() == 4) {
			rp = rps.findByPar(id);
		}
		else {
			rp = rps.findByStu(id);
		}
		
		model.addAttribute("rp", rp);
		return "RP/stuRp";
	}
	
}
