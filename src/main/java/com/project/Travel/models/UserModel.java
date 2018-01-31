package com.project.Travel.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class UserModel{
	@Id
	@GeneratedValue
	private long id;

	// Member variables and annotations go here.
	@Email(message = "Invalid Email format. Ex: example@example.com")
	private String email;

	@Size(min=1, max=255, message = "First name must be 1 - 255 characters")
	private String firstName;

	@Size(min=1, max=255, message = "Last name must be 1 - 255 characters")
	private String lastName;

	@Size(min=8, max=255, message = "Password must be at least 8 characters")
	private String password;

	@Transient
	@Size(min=8, max=255, message="Passwords do not match")
	private String confirm;

	private boolean admin;
	

	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date createdAt;
	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date updatedAt;

	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	private List<Post> posts;

	/********************************************************************************************************/

	@PrePersist
	public void onCreate(){this.createdAt = new Date();}
	@PreUpdate
	public void onUpdate(){this.updatedAt = new Date();}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public void setEmail(String email){
		this.email=email;
	}

	public String getEmail(){
		return email;
	}

	public void setFirstName(String firstName){
		this.firstName = firstName;
	}

	public String getFirstName(){
		return firstName;
	}

	public void setLastName(String lastName){
		this.lastName=lastName;
	}

	public String getLastName(){
		return lastName;
	}

	public void setPassword(String password){
		this.password = password;
	}

	public String getPassword(){
		return password;
	}

	public void setConfirm(String confirm){
		this.confirm = confirm;
	}

	public String getConfirm(){
		return confirm;
	}
	
	// Setters and Getters go here

	public void setAdmin(Boolean admin){
		this.admin=admin;
	}

	public boolean isAdmin(){
		System.out.println(admin);
		return admin;
	}

	
	
	public UserModel(){
		this.createdAt = new Date();
		this.updatedAt = new Date();
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}
}
