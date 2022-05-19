package InventoryManager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getParameter("Action").equals("Add Product")) {
			PrintWriter printWriter = response.getWriter();
			ProductBean product = new ProductBean();
			InventoryDao dao = new InventoryDao();
			product.setId(Integer.parseInt(request.getParameter("id")));
			product.setProduct(request.getParameter("product"));
			product.setNoOfUnits(Integer.parseInt(request.getParameter("noOfUnits")));
			boolean result = dao.addProduct(product);
			RequestDispatcher dispatcher = request.getRequestDispatcher("addProduct.jsp");
			dispatcher.include(request, response);
			printWriter.print("<br><h2>Product added Successfully!!</h2>");
		}
		if (request.getParameter("Action").equals("Edit")) {
			PrintWriter printWriter = response.getWriter();
			ProductBean product = new ProductBean();
			InventoryDao dao = new InventoryDao();
			product.setId(Integer.parseInt(request.getParameter("id")));
			product.setNoOfUnits(Integer.parseInt(request.getParameter("NoOfUnits")));
			boolean result = dao.editProduct(product);
			System.out.println(result);
			RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
			dispatcher.include(request, response);
			printWriter.print("<br><h2>Product Edited Successfully!!</h2>");
		}
		if (request.getParameter("Action").equals("Delete")) {
			PrintWriter printWriter = response.getWriter();
			ProductBean product = new ProductBean();
			InventoryDao dao = new InventoryDao();
			dao.deleteProduct(Integer.parseInt(request.getParameter("id")));
			RequestDispatcher dispatcher = request.getRequestDispatcher("delete.jsp");
			dispatcher.include(request, response);
			printWriter.print("<br><h2>Product Deleted Successfully!!</h2>");
		}
	}
}
