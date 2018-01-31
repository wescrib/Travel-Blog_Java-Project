package com.project.Travel.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.Travel.models.*;

@Repository 												
public interface UserRepo extends CrudRepository<UserModel,Long>{
	// Query methods go here.

	UserModel findByEmail(String email);
	
	// Example:
	// public YourModelHere findByName(String name);
}
