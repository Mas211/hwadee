package com.jxt.controller;


import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Account;
import com.jxt.entity.RewardAndPunish;
import com.jxt.service.AccountService;
import com.jxt.service.RewardAndPunishService;

@Controller
public class RPController {

	@Autowired
	private RewardAndPunishService rps;
	
	@Autowired
	private AccountService as;
	
	@GetMapping("/u/t/newRp")
	public String newRp() {
		
		return "RP/newRp";
	}
	
	@PostMapping("/u/t/newRp")
	public String saveRp(RewardAndPunish rp, HttpServletRequest request) {
		
		rp.setRpTId(((Account) (request.getSession().getAttribute("account"))).getAccountId());
		
		rp.setRpTime(new Timestamp(System.currentTimeMillis()));
		
		rps.add(rp);
		
		return "redirect:/u/t/rpManage";
	}
	
	@GetMapping("/u/t/rpManage")
	public String rpManage(Model model, HttpServletRequest request) {
		int rpTId = ((Account) (request.getSession().getAttribute("account"))).getAccountId();
		
		List<RewardAndPunish> rp = rps.getByTId(rpTId);
		
		model.addAttribute("rp", rp);
		return "RP/rpManage";
	}
	
	@GetMapping("/u/t/updateRp/{rpId}")
	public String updateRp(@PathVariable("rpId") int rpId, Model model) {
		
		RewardAndPunish rp = rps.getRewardAndPunishById(rpId);
		
		String name = rps.getName(rp.getRpStuId());
		model.addAttribute("rp", rp);
		model.addAttribute("stuName", name);
		return "RP/updateRp";
	}
	
	@PostMapping("/u/t/updateRp/{rpId}")
	public String checkUpdateRp(RewardAndPunish rp) {
		rps.update(rp);
		
		return "redirect:/u/t/rpManage";
	}
	
	@GetMapping("/u/t/deleteRp/{id}")
	public String deleteRp(@PathVariable("id") int id) {
		
		rps.delete(id);
		
		return "redirect:/u/t/rpManage";
	}
	
	@GetMapping("/u/s/stuRp")
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
	
	@RequestMapping(value = "/getName", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
	public @ResponseBody String getName(String id) {
		int idInt = Integer.parseInt(id);
		
		Account a = as.getAccountById(idInt);
		
		String result = a.getAccountName() + "|" + a.getRoleId();
		
		return result;
	}

	
}
