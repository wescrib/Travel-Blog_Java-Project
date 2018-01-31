package com.project.Travel.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.Travel.models.Post;

@Repository 												
public interface PostRepo extends CrudRepository<Post,Long>{
	// Query methods go here.
	
	// Example:
	// public YourModelHere findByName(String name);
}
