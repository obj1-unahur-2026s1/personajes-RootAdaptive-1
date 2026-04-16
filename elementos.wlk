object catillo{
    var defensa = 150 
    method altura_elemento() = 20
    method nivel_de_defensa()= defensa
    method valor_que_otorga() = defensa * 0.2

    method recibir_ataque(potencia){
        defensa = (defensa - potencia).max(0) 
    }

    method recibir_trabajo(){
        defensa = 200.min(defensa + 20)
    } 
}

object aurora{
    var esta_viva = true 
    method altura_elemento() = 10 
    method valor_que_otorga() = 15

    method recibir_ataque(potencia){
        if (potencia >= 10) {esta_viva = false}
    }

    method recibir_trabajo(){}
    
}

object tipa{
    var altura = 8
    method altura_elemento() = altura
    method otorgar_valor() = altura * 2

    method recibir_ataque(potencia){}
    
    method recibir_trabajo(){
        altura += 1
    }
}