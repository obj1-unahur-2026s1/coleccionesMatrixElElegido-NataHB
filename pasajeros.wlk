object neo {
    var energia = 100
    method vitalidad() = energia / 10

    method saltar() {
        energia /= 2
    }
    method esElElegido() = true
}

object morfeo {
    var descansado = true
    var property vitalidad = 8

    method vitalidad() = vitalidad

    method saltar() {
        descansado = !descansado
        vitalidad -= 1
    }
    method esElElegido() = false
}

object trinity {
    method vitalidad() = 0
    method saltar() {}
    method esElElegido() = false
}
