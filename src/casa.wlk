import cosas.* 
/* comprar(cosa)`: registra que se ha comprado una cosa.
- `cantidadDeCosasCompradas()`: indica ... eso.
- `tieneComida()`: indica si compró algo que es comida al menos una vez.
- `vieneDeEquiparse()`: indica si la _última_ cosa que se compró es un electrodoméstico, o bien vale más de 5000 pesos.
- `esDerrochona()`: indica si el importe total de las cosas compradas es de 9000 pesos o más.
- `compraMasCara()`: retorna la cosa comprada de mayor valor.
- `electrodomésticosComprados()`: devuelve un objeto que contiene todas las cosas compradas que son electrodomésticos. 
- `malaEpoca()`: indica si todas las cosas compradas son comida.
- `queFaltaComprar(lista)`: recibe una lista de cosas y devuelve las cosas de esa lista que aún no se han comprado. <br>
  **Atención**: es una pregunta. No se pide que se compren. 
- `faltaComida()`: indica si se han comprado menos de 2 cosas que son comida.*/
object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa){
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	method tieneComida(){
		cosas.any({cosa=>cosa.esComida()})
	}
	method vieneDeEquiparse(){
		return cosas.last().esElectrodomestico() or cosas.last().precio()>5000	
		}
	
	method esDerrochona(){ //`: indica si el importe total de las cosas compradas es de 9000 pesos o más.
		var suma=cosas.sum({cosa=>cosa.precio()})
		return suma>=9000
		}	
	method compraMasCara(){ //retorna la cosa comprada de mayor valor.
		return cosas.max({cosa=>cosa.precio()})	
	}
	method electrodomesticosComprados(){
	//	devuelve un objeto que contiene todas las cosas compradas que son electrodomésticos.
		return cosas.filter ({cosa=>cosa.esElectrodomestico()})
	}
	method malaEpoca(){ //indica si todas las cosas compradas son comida
		return cosas.all({cosa=>cosa.esComida()})	
	}
/* 	method queFaltaComprar(lista){ //`: recibe una lista de cosas y devuelve las cosas de esa lista que aún no se han comprado
		 var conjCosas=cosas.asSet()
		 var conjLista=lista.asSet()
		 
		 return conjCosas.difference(conjLista)
		}*/
	method queFaltaComprar(lista){
		return lista.filter({quiero=>not cosas.contains(quiero)})
	}		
		
	method faltaComida(){ //`: indica si se han comprado menos de 2 cosas que son comida.*/
	    return cosas.count({cosa=>cosa.esComida()})<2
}

}
