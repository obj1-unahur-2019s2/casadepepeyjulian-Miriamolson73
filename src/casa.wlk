import cosas.* 
import CuentaBancaria.*

object casaDePepeYJulian {
	var property cuantaQueEstaUsando=cuentacorriente
	const cosas = []
	method comprar(cosa){
		cosas.add(cosa)
		self.gastar(cosa.precio())
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
	method queFaltaComprar(lista)= lista.filter({quiero=>not cosas.contains(quiero)})
			
		
	method faltaComida()= cosas.count({cosa=>cosa.esComida()})<2


	method gastoEnComida()= self.comidasCompradas().sum({cosa=>cosa.precio()})

  
  	method comidasCompradas ()= cosas.filter ({cosa=>cosa.esComida()})
  	
  	
 	method hayElectrodomesticosBaratos()= self.electrodomesticosComprados().any({cosa=>cosa.precio()<3000})

    method precioDeElectrodomesticos()=self.electrodomesticosComprados().map({cosa=>cosa.precio()})

	method nivelDeAumento()= cosas.last().precio() >= cosas.first().precio() *2
	
	method primeraComidaComprada()= self.comidasCompradas().first()

	method 
}