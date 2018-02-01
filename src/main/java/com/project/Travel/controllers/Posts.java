package com.project.Travel.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.Travel.services.*;
import com.project.Travel.models.*;


@Controller
public class Posts{
	private PostService postService;

	public Posts(PostService postService){
		this.postService = postService;
	}
	
	@RequestMapping("/discover")
	public String travel(Model model){
		ArrayList<Post> allPosts= postService.all();
		Random rand = new Random();

		int newId = rand.nextInt((allPosts.size() - 3) + 1) + 3;

		long id = Long.valueOf(newId);

		System.out.println(id);


		Post post = postService.findByID(id);
		model.addAttribute("post", post);
		return "randomPost";
	}	
}
