package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Categoria;

@WebServlet("/EliminarCategoriaController")
public class EliminarCategoriaController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EliminarCategoriaController() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Integer id = Integer.parseInt(request.getParameter("id"));
        eliminarCategoria(id);
        response.sendRedirect("VerCategoriasController");
    }

    public void eliminarCategoria(Integer id) {
        Categoria.delete(id);
    }
}
