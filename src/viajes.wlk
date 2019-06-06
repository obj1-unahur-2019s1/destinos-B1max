class Viaje {
	var property idioma =#{}
	method viajeImplicaEsfuerzo()
	method sirveParaBroncearse()
	method diasDeActividad()
	method viajeEsInteresante(){
		return idioma.size()>1
	}
}

class ViajeDePlaya inherits Viaje{
	var property largoDeLaplaya=0
	override method diasDeActividad(){
		return largoDeLaplaya/500
	}
	override method viajeImplicaEsfuerzo(){
		return largoDeLaplaya>1200
	}
	override method sirveParaBroncearse(){
		return true
	}
}
class ExcursionACiudad inherits Viaje{
	method totalAtracciones(){
		return 0
	}
	override method diasDeActividad(){
		return self.totalAtracciones() /2
	}
	override method viajeImplicaEsfuerzo(){
		return self.totalAtracciones().between(5,8)
	}
	override method sirveParaBroncearse(){
		return false
	}
	override method viajeEsInteresante(){
		return super() or self.totalAtracciones()==5
	}
	
}
class ExcursionACiudadTropical inherits ExcursionACiudad{
	override method diasDeActividad(){
		return super() + 1
	}
	override method sirveParaBroncearse(){
		return true
	}
}
class SalidaDeTrekking inherits Viaje{
	var property largoSenderos
	var property diasDeSol
	override method diasDeActividad(){
		return largoSenderos / 50
	}
	override method viajeImplicaEsfuerzo(){
		return largoSenderos>80
	}
	override method sirveParaBroncearse(){
		return diasDeSol>200 or
		diasDeSol.between(100,200)
	}
	override method viajeEsInteresante(){
		return super() and diasDeSol>140	
	}
}

/* 3) */
class ClasesDeGimnasia inherits Viaje{
	idioma(#{"Español"})
	override method diasDeActividad(){
		return 1
	}
	
}

