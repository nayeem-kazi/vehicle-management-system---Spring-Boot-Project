package com.exam.spring.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer>{
	@Query("SELECT u FROM users u.userUserName=:n and u_pass=:p")
	public Users getUserByName(@Param("n")String userUserName, @Param("p")String u_pass);
}
