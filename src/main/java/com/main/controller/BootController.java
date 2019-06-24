package com.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.main.model.User;
import com.main.repository.UserRepository;


@RestController
public class BootController {
	@Autowired
	UserRepository userRepository;
	@RequestMapping("/addUser")
	public ModelAndView addUser(@ModelAttribute("user") User user)
	{
		return new ModelAndView("AddUser");
	}
	@RequestMapping("/save")
	public ModelAndView saveUser(@ModelAttribute("user") User user)
	{
		userRepository.save(user);
		
		return new ModelAndView("redirect:/success");
	
	}
	
	@RequestMapping("/success")
	public ModelAndView success(@ModelAttribute("user") User user)
	{
		String msg="Uploaded Successfully";
		return new ModelAndView("AddUser","msg",msg);
	}
	
	@RequestMapping("/listUser")
	public ModelAndView listUser(@ModelAttribute("user") User user)
	{
		List<User> ls=(List<User>)userRepository.findAll();
		return new ModelAndView("UserList","List",ls);
	}


	@RequestMapping("/Edit")
	public ModelAndView editUser(HttpServletRequest req, @ModelAttribute("user") User user)
	{
		List<User> ls=(List<User>) userRepository.findAll();
		int id=Integer.parseInt(req.getParameter("id"));
		HttpSession session=req.getSession();
		session.setAttribute("id", id);
	User b =	userRepository.findOne(id);
	
	
	ModelAndView m= new ModelAndView("EditPage","list",ls);
	m.addObject("edit", b);
	return m;
	
	}
	@RequestMapping("/update")
	public ModelAndView update(HttpSession session,@ModelAttribute("user") User user)
	{
		User user1=userRepository.findOne(user.getId());
		user1.setUserName(user.getUserName());
		user1.setFirstName(user.getFirstName());
		user1.setLastName(user.getLastName());
		user1.setPassword(user.getPassword());
		user1.setConfirmPassword(user.getConfirmPassword());
		user1.setMailId(user.getMailId());
		user1.setMobileNo(user.getMobileNo());
		userRepository.save(user1);
		return new ModelAndView("redirect:/listUser");
	}
	@RequestMapping("/Delete")
	public ModelAndView delete(HttpServletRequest req,@ModelAttribute("user")User user)
	{
		int id=Integer.parseInt(req.getParameter("id"));
		userRepository.delete(id);
		return new ModelAndView("redirect:/listUser");
	}

}
