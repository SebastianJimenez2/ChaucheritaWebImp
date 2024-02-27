package entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.Table;

@Entity
@Table(name="Categoria")
public class Categoria implements Serializable{
	private static final long serialVersionUID = 1L;

    public Categoria() {
    	
    }
    
    public Categoria(String nombre, TipoMovimiento tipo) {
		super();
		this.nombre = nombre;
		this.tipo = tipo;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
    private Integer id;
    @Column
    private String nombre;
    @Enumerated
    private TipoMovimiento tipo;

    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public TipoMovimiento getTipo() {
		return tipo;
	}

	public void setTipo(TipoMovimiento tipo) {
		this.tipo = tipo;
	}

	public static void save(String nombre, TipoMovimiento ingreso) {
		EntityManager em = Persistence.createEntityManagerFactory("ImplementaciónChaucherita").createEntityManager();
		Categoria categoria = new Categoria(nombre, ingreso);
		em.getTransaction().begin();
		em.persist(categoria);
		em.getTransaction().commit();
	}
	
	public static List<Categoria> getAll(){
		EntityManager em = Persistence.createEntityManagerFactory("ImplementaciónChaucherita").createEntityManager();
    	
		String consultaJPQL = "SELECT c.* FROM categoria c";
		Query query = em.createNativeQuery(consultaJPQL, Categoria.class);
		List<Categoria> categoria = (List<Categoria>) query.getResultList();
		
    	return (List<Categoria>) categoria;
	}

	public static Categoria getById(Integer id) {
		EntityManager em = Persistence.createEntityManagerFactory("ImplementaciónChaucherita").createEntityManager();
    	
		String consultaJPQL = "SELECT c FROM Categoria c WHERE c.id= :id";
		Query query = em.createQuery(consultaJPQL);
		query.setParameter("id", id);
		Categoria categoria = (Categoria) query.getSingleResult();
		
		
    	return (Categoria) categoria;
	}

	public static void delete(Integer id) {
		EntityManager em = Persistence.createEntityManagerFactory("ImplementaciónChaucherita").createEntityManager();
	    Categoria categoria = em.find(Categoria.class, id);
	    if (categoria != null) {
	        em.getTransaction().begin();
	        em.remove(categoria);
	        em.getTransaction().commit();
	    } else {
	        System.out.println("xd");
	    }
	}
	
	public static void actualizar(Categoria categoria, String nombre) {
		EntityManager em = Persistence.createEntityManagerFactory("ImplementaciónChaucherita").createEntityManager();
		
		categoria.setNombre(nombre);
		em.getTransaction().begin();
		em.merge(categoria);
		em.getTransaction().commit();
	}
}
