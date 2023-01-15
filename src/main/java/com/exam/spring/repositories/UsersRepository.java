package com.exam.spring.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer>{
	@Query("SELECT u FROM Users u WHERE u.userUserName=:user AND u.uPass=:pass")
	public List<Users> getUserByName(@Param("user")String userUserName, @Param("pass") String uPss);
}
