package by.htp.ex.controller.command;

import java.io.IOException;

import javax.servlet.http.HttpServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException ;
}
