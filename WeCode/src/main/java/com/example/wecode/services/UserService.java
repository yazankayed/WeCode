package com.example.wecode.services;

import com.example.wecode.models.Company;
import com.example.wecode.models.LoginUser;
import com.example.wecode.models.User;
import com.example.wecode.repositories.UserRepository;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.List;
import java.util.Optional;


@Service
public class UserService {

    @Autowired
    private UserRepository userRepo;


    public void deleteUserById(Long id) {
        userRepo.deleteById(id);
    }
    public void deleteUser(User b) {
        userRepo.delete(b);
    }
    public List<User> allUsers(){
        return userRepo.findAll();
    }
    public User findUserById(Long id) {
        Optional<User> optionalUser = userRepo.findById(id);
        if(optionalUser.isPresent()) {
            return optionalUser.get();
        }
        else {
            return null;
        }
    }
    public User findUserByEmail(String email) {
        Optional<User> optionalUser = userRepo.findByEmail(email);
        if(optionalUser.isPresent()) {
            return optionalUser.get();
        }
        else {
            return null;
        }
    }
    public User createUser(User u) {
        return userRepo.save(u);
    }
    public User updateUser(User u) {
        return userRepo.save(u);
    }
    public User register(User newUser, BindingResult result) {
        //.matches("^[a-zA-Z]*$")
        if (!(newUser.getUserName()).matches("^[a-zA-Z]*$")) {
            result.rejectValue("userName","Invalid","Use Letters only!");
        }
        if (userRepo.findByEmail(newUser.getEmail()).isPresent()) {
            result.rejectValue("email","Unique","This is a used email! Try another one.");
        }
        if (!newUser.getPassword().equals(newUser.getConfirm())) {
            result.rejectValue("confirm","Matches","Confirm password must match password.");
        }
        if (result.hasErrors()) {
            return null;
        }else {
            String hashedPW = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
            newUser.setPassword(hashedPW);
            return userRepo.save(newUser);
        }
    }
    public User login(LoginUser newLoginObject, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }
        Optional<User> potentialUser = userRepo.findByEmail(newLoginObject.getEmail());
        if (!potentialUser.isPresent()) {
            result.rejectValue("email","Unique","No such email!");
            return null;
        }
        User user = potentialUser.get();
        if (!BCrypt.checkpw(newLoginObject.getPassword(), user.getPassword())) {
            result.rejectValue("password","Matches","Wrong Password!");
        }
        if(result.hasErrors()) {
            return null;
        }else {
            return user;
        }
    }

}
