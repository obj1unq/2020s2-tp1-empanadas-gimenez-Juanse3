object galvan { 
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	
	method sueldo() { return sueldo }
	method deuda() { return deuda }
	method dinero() { return dinero }
	
	method cambiarSueldo(nuevoSueldo) { sueldo = nuevoSueldo }
	method cobrarSueldo() { 
		if ( (dinero + sueldo) < deuda )
			deuda -= (dinero + sueldo) 
		else{
			dinero +=(sueldo-deuda)
			deuda=0	
		}
		
	}
	method gastar(cuanto) { 
		dinero -= cuanto
		if( dinero < 0 ){
			deuda += dinero*(-1)
			dinero = 0
		}
	}
	
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
	
	method cobrarSueldo() { 
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
		empleado.cobrarSueldo() 
	}
	
}