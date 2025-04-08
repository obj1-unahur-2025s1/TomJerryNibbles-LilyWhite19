object tom {
    var energia = 50
    var distanciaRecorrida = 0
    var ultimoRatonComido = jerry
    method correr(metros) {
        energia = energia - metros * 0.5
        distanciaRecorrida = distanciaRecorrida + metros

    }
    method comer(raton){
        energia = energia + 12 + raton.peso()
        ultimoRatonComido = raton
    }
    method velocidadMax() = 5 + energia * 0.1
    method energia() = energia
    method puedeCazar(distancia){
      return energia >= distancia / 2
    }
    method cazar(unRaton, unaDistancia){
      if (self.puedeCazar(unaDistancia)){
        self.correr(unaDistancia)
        self.comer(unRaton)
      }
    }
}

object jerry {
  var edad = 2
  method peso() = edad * 20
  method cumplirAnios() {edad += 1}
  method edad() = edad

}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón

object jorgito {
    // jorgito puede modificar su peso a voluntad
    var peso = 30
    method peso() = peso
    method peso(nuevoPeso) {peso = nuevoPeso}  
}