import planeta.*

class Persona{
	var property edad
	
	method potencia() = 20
	
	method inteligencia() = if(edad.between(20, 40)) { 12 }
							else { 8 }
							
	method esDesacado() = edad == 25 or edad == 35
	
	method tiene10DeInteligencia() = self.inteligencia() > 10
	
	method valor() = self.potencia() + self.inteligencia()
	
	method esHabitanteValioso() = self.valor() >= 40
	
	method ofreceTributo(planeta) {}
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property cantTecnicas = 2
	
	override method potencia() { return super() + masaMuscular * cantTecnicas }
	override method esDesacado() { return super() or cantTecnicas > 5 }
	
	method entrenar(dias) {	masaMuscular += (dias.div(5))	} 
	
	method aprenderTecnica() { cantTecnicas += 1 }	

	override method ofreceTributo(planeta) { planeta.costruirMuralla(2) }
}

class Docente inherits Persona {
	var property cantCursos = 0
	
	
	method darUnCurso() { cantCursos += 1 } 
	override method inteligencia() {return super() + cantCursos * 2 } 
	override method esDesacado() = cantCursos > 3
	
	override method ofreceTributo(planeta) { planeta.fundarMuseo() }
	override method valor() { return super() + 5}
}

class Soldados inherits Persona {
	var property armas = #{}
	
	override method potencia() { return super() + armas.sum({ a=> a.potencia()}) }
	override method ofreceTributo(planeta) { planeta.costruirMuralla(5) }
	
	
}












