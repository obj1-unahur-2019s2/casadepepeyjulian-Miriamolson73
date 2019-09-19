object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object packComida {
	var property plato
	var property aderezo
	method precio(){
		return plato.precio()+aderezo.precio()
	}
}	
object 	packRegalo {
	var pack = []
	method comprar(cosa){
		pack.add(cosa)
	}
	method esComida(){ //indica si todas las cosas compradas son comida
		return pack.all({cosa=>cosa.esComida()})	
	}
	method esElectrodomestico(){return not self.esComida()}
	
	method precio(){
		return pack.sum({cosa=>cosa.precio()})*0.8
}	
} 
object milanesasRebozadasXKilo{ 
	var property precio=260

	method esComida()= true
	method esElectrodomestico() = false	
}
object salsaTomates { 
	var property precio=90
	

	method esComida()= true
	method esElectrodomestico() = false	
	
	}
object microondas { 
	var property precio=4200



	method esComida()= false
	method esElectrodomestico() = true
}
object cebollasXKilo { 
	var property precio=25
	method esComida()= true
	method esElectrodomestico() = false
}


object compu {
	
	var precio=500
	method precio() {return precio * dolar.cotizacion()}
	method esComida()= false
	method esElectrodomestico() = true
}
	

object dolar{
	var property cotizacion=1
}


	
	
	

