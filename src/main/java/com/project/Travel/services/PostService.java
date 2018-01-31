package com.project.Travel.services;

import com.project.Travel.repositories.*;
import com.project.Travel.models.*;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PostService {
	// Member variables / service initializations go here

	private PostRepo postRepo;
	private UserRepo userRepo;
		
	public PostService(PostRepo postRepo, UserRepo userRepo){
		this.postRepo = postRepo;
		this.userRepo = userRepo;

	}
	
	public void create(Post post){
		postRepo.save(post);
	}

	public void update(Post post){
		postRepo.save(post);
	}

	public ArrayList<UserModel> all(){
		return(ArrayList<UserModel> )userRepo.findAll();
	}

	public Post findByID(long id){
		return (Post) postRepo.findOne(id);
	}

	public void delete(long id){
		postRepo.delete(id);
	}


	
	// Crud methods to act on services go here.
}
