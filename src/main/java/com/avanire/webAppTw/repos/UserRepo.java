package com.avanire.webAppTw.repos;

import com.avanire.webAppTw.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
