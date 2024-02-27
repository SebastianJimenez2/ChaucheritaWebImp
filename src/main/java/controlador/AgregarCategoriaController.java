package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Categoria;
import entities.TipoMovimiento;

@WebServlet("/AgregarCategoriaController")
public class AgregarCategoriaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AgregarCategoriaController() {
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
		case "crearCategoria":
			crearCategoria(request, response);
			break;
		case "guardarCategoria":
			String nombre = request.getParameter("nombre");
			Integer tipo = Integer.parseInt(request.getParameter("tipo"));
			guardarCategoria(nombre, tipo);
			response.sendRedirect("VerCategoriasController");
			break;
		}
	}

	public void crearCategoria(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect("crearCategoria.jsp");
	}

	public void guardarCategoria(String nombre, Integer tipo) throws IOException {
		if(tipo == 1) {
			Categoria.save(nombre, TipoMovimiento.INGRESO);
		} else if (tipo == 2) {
			Categoria.save(nombre, TipoMovimiento.EGRESO);
		} else {
			System.out.println("xd");
		}
	}
}
