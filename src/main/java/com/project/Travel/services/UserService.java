package com.project.Travel.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.Travel.repositories.UserRepo;
import com.project.Travel.models.*;

@Service
public class UserService {
	// Member variables / service initializations go here
	private BCryptPasswordEncoder bcrypt;
	private UserRepo userRepo;
		
	public UserService(UserRepo userRepo){
		this.userRepo = userRepo;
		this.bcrypt = new BCryptPasswordEncoder();

	}

	public boolean isMatch(String password, String dbPassword) {
		if(bcrypt.matches(password,dbPassword)){
			return true;
		}else{
			return false;
		}
	}

	public void create(UserModel user){
		user.setPassword( bcrypt.encode( user.getPassword() ) );
		userRepo.save(user);
	}

	public void update(UserModel user){
		userRepo.save(user);
	}

	public ArrayList<UserModel> all(){
		return(ArrayList<UserModel>)userRepo.findAll();
	}

	public UserModel findById(long id){
		return (UserModel) userRepo.findOne(id);
	}

	public void destroy(long id){
		userRepo.delete(id);
	}

	public UserModel findByEmail(String email){
		return (UserModel) userRepo.findByEmail(email);
	}
	
	// Crud methods to act on services go here.
}
