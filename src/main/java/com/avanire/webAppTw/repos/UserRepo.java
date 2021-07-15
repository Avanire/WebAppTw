package com.avanire.webAppTw.repos;

import com.avanire.webAppTw.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User, Long> {
    User findByUsername(String username);
}
