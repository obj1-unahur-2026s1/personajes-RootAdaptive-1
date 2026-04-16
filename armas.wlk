object ballesta {
  var flechas = 10
  method potencia()= 4

  method esta_cargada(){return flechas > 0}

  method usar_arma(){flechas =-1}

}

object jabalina{
  var esta_cargada = true

  method potencia()= 30
  
  method usar_arma(){esta_cargada = false}
}