package com.example.wecode.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

    @Entity
    @Table(name="chats")
    public class Chat {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @NotEmpty(message="Message is required!")
        @Size(min=0, max=999999999, message="Message must be at least 1 Character")
        private String message;
        @ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name="user_id")
        private User user;

        public Chat() {}

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public User getUser() {
            return user;
        }

        public void setUser(User user) {
            this.user = user;
        }
    }
