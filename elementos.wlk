object catillo{
    var defensa = 150 
    method altura_elemento()=20

    method recibir_ataque(potencia){
        defensa = (defensa - potencia).max(0) 
    }
    method nivel_de_defensa()= defensa 
}

object aurora{
    var esta_viva = true 
    method recibir_ataque(potencia){
        if (potencia >= 10) {esta_viva = false}
    }

    method altura_elemento(){return 1}
}

object tipa{
    var altura = 8
    method altura_elemento()= altura

    method recibir_ataque(potencia){}
    method cambiar_altura(altura_nueva){}
}