object nave {
    const pasajeros = []

    method subirPasajero(pasajero) = pasajeros.add(pasajero)
    method subirPasajeros(listaPasajeros) = pasajeros.addAll(listaPasajeros)
    method bajarPasajero(pasajero) = pasajeros.remove(pasajero)

    method cantidadDePasajeros() = pasajeros.size()
    method pasajeroDeMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
    method estaEquilibrada() = self.pasajeroDeMayorVitalidad()/2 <= self.pasajeroDeMenorVitalidad()
    method pasajeroDeMenorVitalidad() =  pasajeros.min({p => p.vitalidad()})
    method elegidoEnNave() = pasajeros.any({p => p.esElElegido()})
    method chocar() = pasajeros.forEach({p=> p.saltar(); pasajeros.clear()}) 
    method acelerar() = pasajeros.filter({p => not p.esElElegido()}).forEach({p=> p.saltar()})
    
}