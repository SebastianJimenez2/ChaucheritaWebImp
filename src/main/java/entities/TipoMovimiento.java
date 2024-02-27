package entities;

public enum TipoMovimiento {
	INGRESO("Ingreso", 1),
	EGRESO("Egreso",2);
	
	private String nombre;
	private int identificador;

    private TipoMovimiento(String nombre, int identificador) {
    	this.identificador= identificador;
    	this.nombre = nombre;
    }
	public String getNombre() {
		return nombre;
	}

	public int getIdentificador() {
		return identificador;
	}
}