package com.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.auth.model.User;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {
	User findByUsername(String username); 
}