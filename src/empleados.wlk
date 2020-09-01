object galvan { 
	var sueldo = 15000
	
	
	method sueldo() { return sueldo }
	
	method cambiarSueldo(nuevoSueldo) { sueldo = nuevoSueldo }
	method cobrarMes() {  }
	
}

object baigorria { 
	var sueldo = 0
	var empanadasVendidas = 0
	var totalCobrado = 0
	const precioPorEmpanada = 15
	

	method sueldo() { return sueldo }
	method empanadasVendidas(){ return empanadasVendidas }
	method totalCobrado() { return totalCobrado}
	
	method empanadasVendidas(cantidadEmpanadas) { 
		empanadasVendidas += cantidadEmpanadas
		self.calculoSueldo()
	}
	
	method acumularSueldo(comision) {
		totalCobrado += comision
	}
	
	method calculoSueldo() { sueldo = empanadasVendidas * precioPorEmpanada}
	
	method cobrarMes() { 
		self.acumularSueldo(sueldo)
		sueldo = 0
		empanadasVendidas = 0
	}
	
}


object gimenez { 
	var fondoSueldos = 300000
	
	method fondoSueldos() { return fondoSueldos }
	
	method pagarSueldo(empleado){
		fondoSueldos -= empleado.sueldo()
		empleado.cobrarMes() 
	}
	
}