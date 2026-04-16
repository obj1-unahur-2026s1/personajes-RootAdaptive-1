
import armas.*
import elementos.*

object floki {
    var arma_en_uso = ballesta
    
    method encontrar_elemento(elemento){
        if (arma_en_uso.esta_cargada()){
            elemento.recibir_ataque(arma_en_uso.potencia())
            arma_en_uso.usar_arma()
        }
    }
    method cambiar_arma(arma){arma_en_uso = arma}
}

object mario {
    var valor_recolectado = 0
    var ultima_altura = 0

    method mario_es_feliz(){
        return( valor_recolectado >= 50 or ultima_altura >= 10 )
    }

    method encontrar_elemento(elemento){
        valor_recolectado += elemento.valor_que_otorga()
        elemento.recibir_trabajo()
        ultima_altura += elemento.altura_elemento() 
    }
}

object luisa{
    var personaje_activo = mario 

    method asignar_personaje(personaje){
        personaje_activo = personaje
    }
    method aparece_elemento(elemento){
        personaje_activo.encontrar_elemento(elemento)
    }

    method personaje_luisa() = personaje_activo

}


