package com.example.restful.util;

public class NotFoundException extends RuntimeException {
    public NotFoundException(String message) {
        super(message);
    }
}