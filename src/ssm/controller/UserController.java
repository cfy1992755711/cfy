package ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ssm.entity.Recuit;
import ssm.entity.Resume;
import ssm.entity.User;
import ssm.service.RecuitService;
import ssm.service.ResumeService;
import ssm.service.UserService;
@RequestMapping("/user")
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private RecuitService recuitService;
	@Autowired
	private ResumeService resumeService;
	@RequestMapping("/name")
	@ResponseBody
	public String name(String name) {
		User user=userService.findUserByName(name);
		if(user!=null) {
			return "111";
		}else {
			return "000";
		}
	}
	@RequestMapping("/register")
	public String register(User user) {
		userService.addUser(user);
		return "success";
	}
	@RequestMapping("/login")
    public String login(User user,HttpSession session) {
		User user1=userService.findUser(user);
		if(user1!=null) {
			session.setAttribute("user", user);
			return "user";
			
		}else{
			return "fail";
		}
	}
	@RequestMapping("/checkName")
	@ResponseBody
	public String checkName(String name) {
		User user=userService.findUserByName(name);
		if(user!=null) {
			return "111";
		}else {
			return "000";
		}
		
	}
	@RequestMapping("/check")
	@ResponseBody
	public String check(User user) {
		User user1=userService.findUser(user);
		if(user1!=null) {
			return "111";
		}else {
			return "000";
		}
		
	}
	@RequestMapping("/recuit")
	public String recuit(HttpSession session,String name) {
		List<Recuit> lists=recuitService.findAll();
		session.setAttribute("name", name);
		session.setAttribute("list", lists);
		return "info";
	}
	public String deliver(HttpSession session,String name) {
		Resume resume=resumeService.findResumeByUsername(name);
		if(resume==null) {
			session.setAttribute("name", name);
			return "resume";
		}else {
			return "";
		}
	}
}
