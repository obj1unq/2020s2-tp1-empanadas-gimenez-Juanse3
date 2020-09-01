object galvan { 
	var sueldo = 15000
	
	method sueldo() { return sueldo }
	
	method cambiarSueldo(nuevoSueldo) { sueldo = nuevoSueldo }
}

object baigorria { 
	var sueldo = 0
	var empanadasVendidas = 0
	const precioPorEmpanada = 15

	method sueldo() { return sueldo }
	method empanadasVendidas(){ return empanadasVendidas }
	
	method empanadasVendidas(cantidadEmpanadas) { 
		empanadasVendidas += cantidadEmpanadas
		self.calculoSueldo()
	}
	method calculoSueldo() { sueldo = empanadasVendidas * precioPorEmpanada}
}


object gimenez { 
	var fondoSueldos = 300000
	
	method fondoSueldos() { return fondoSueldos }
	
	method pagarSueldo(empleado){
		fondoSueldos -= empleado.sueldo() 
	}
	
}