package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Categoria;

@WebServlet("/ActualizarCategoriaController")
public class ActualizarCategoriaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ActualizarCategoriaController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.ruteador(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void ruteador(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ruta = (request.getParameter("ruta") != null) ? request.getParameter("ruta") : "ver";

		switch (ruta) {
		case "editarCategoria":
			Integer id = Integer.parseInt(request.getParameter("id"));
			this.editarCategoria(id, request, response);
			break;
			
		case "guardarCategoria":
			Integer idGuardar = Integer.parseInt(request.getParameter("id"));
			String nombre = request.getParameter("nombre");
			this.guardarCategoria(idGuardar, nombre, request, response);
			break;
		}
	}
	
	private void editarCategoria(Integer id, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Categoria categoria = Categoria.getById(id);
		
		request.setAttribute("categoria", categoria);
		request.getRequestDispatcher("editarCategoria.jsp").forward(request, response);
	}
	
	private void guardarCategoria(Integer id, String nombre, HttpServletRequest request, HttpServletResponse response) throws IOException {
		Categoria categoria = Categoria.getById(id);
		Categoria.actualizar(categoria, nombre);
		response.sendRedirect("VerCategoriasController");
	}
}
