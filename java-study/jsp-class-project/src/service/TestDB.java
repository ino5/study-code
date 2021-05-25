package service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TestDAO;
import dao.TestDTO;

public class TestDB implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TestDAO testDAO = TestDAO.getInstance();
		try {
			List<TestDTO> testList = testDAO.select();
			request.setAttribute("testList", testList);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "test-db.jsp";
	}

}
