object espada{
		
}

object collar {

}

object armadura {

}

object libro {
	
}

object castillo {
	
	const property artefactos = #{}
		
	method agregarArtefactos(_artefactos) {
		artefactos.addAll(_artefactos)		
	}
	
}


object rolando {

	const property artefactos = #{}
	var property capacidad = 2
	const casa = castillo
	const property historia = []
	var poderBase = 5

	method poderBase(){
		return poderBase
	}
	method luchar(){
		self.usarArtefactos()
		poderBase +1
	}
	method usarArtefactos(){
		artefactos.forEach({artefacto => artefacto.serUsado()})

	}

	method encontrar(artefacto) {
		if(artefactos.size() < capacidad) {
			artefactos.add(artefacto)
		}
		historia.add(artefacto)
	}
	
	method volverACasa() {
		casa.agregarArtefactos(artefactos)
		artefactos.clear()
	}	
	
	method posesiones() {
		return self.artefactos() + casa.artefactos()
	}
	
	method posee(artefacto) {
		return self.posesiones().contains(artefacto)	
	}
		
	}

