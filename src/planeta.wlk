import personas.*

class Planeta {
	const property habitantes = #{}
	var property cantidadMuseos = 0
	var property longitudMuralla = 0
	
	method agregarHabitante(habitante) { habitantes.add(habitante) }
	method delegacionDiplomatica() = habitantes.filter({ h => h.esDesacado() })
	
	method valorInicialDefensa() = habitantes.count({ h => h.potencia() >= 30 })
	method esDeCulto() = cantidadMuseos >= 2 and habitantes.all({h => h.tiene10DeInteligencia()})
	
	method potenciaReal() = habitantes.sum({ h => h.potencia() })
	
	method costruirMuralla(longitud) { longitudMuralla += longitud}
	
	method fundarMuseo() { cantidadMuseos += 1 }
	
	method potenciaAparente() = habitantes.max({ h => h.potencia() }).potencia() * habitantes.size()
	
	method necesitaReforzarse() = self.potenciaAparente() > 123
	
	method habitantesValiosos() = habitantes.filter({ h => h.esHabitanteValioso() })
	
	method planetaRecibeTributo() { habitantes.forEach({h => h.ofreceTributo(self) }) }
	
	method apaciguar(planeta) { 
		self.habitantesValiosos().forEach({ h => h.ofreceTributo(planeta) }) } 
}
