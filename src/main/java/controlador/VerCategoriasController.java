package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Categoria;

@WebServlet("/VerCategoriasController")
public class VerCategoriasController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public VerCategoriasController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		verCategorias(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void verCategorias(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Categoria> categorias = Categoria.getAll();
		
		request.setAttribute("categorias", categorias);
		request.getRequestDispatcher("categoria.jsp").forward(request, response);
	}
}
