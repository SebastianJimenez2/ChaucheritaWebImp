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
    	//1. Obtengo los parametros
        String idString = request.getParameter("id");
        //2. Hablo con el modelo
        if (idString != null && !idString.isEmpty()) {
            Integer id = Integer.parseInt(idString);
            eliminarCategoria(id);
        }
        //3. Hablo con la vista
        response.sendRedirect("VerCategoriasController");
    }

    public void eliminarCategoria(Integer id) {
        Categoria.delete(id);
    }
}
