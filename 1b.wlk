class Rama{
  var valor
  var izq
  var der
  
  // es de busqueda si sus hijos tambien lo son, el maximo del hijo izquierdo es menor o igual que su valor
  // y el minimo del hizo derecho es mayor o igual que su valor
  method esDeBusqueda(){
    return izq.esDeBusqueda() && der.esDeBusqueda() && izq.maximo() <= valor && valor <= der.minimo()
  }

  method minimo(){
    var l = izq.minimo()
    var r = der.minimo()
    if (l <= valor && l <= r) return l
    else if (valor <= r) return valor 
    else return r
  }

  method maximo(){
    var l = izq.maximo()
    var r = der.maximo()
    if (l >= valor && l >= r) return l
    else if (valor >= r) return valor 
    else return r
  }
}

class Hoja{
  var valor
  
  // una hoja siempre cumple
  method esDeBusqueda(){
    return true
  }

  method minimo(){
    return valor
  }

  method maximo(){
    return valor
  }
}

class Church{
  // referencia al sucesor
  var suc

  // metodo que da el valor, para revisar que todo este bien
  method valor(){
    return (suc.valor() + 1)
  }

  // metodo para diferenciar Church de Cero
  method es_cero(){
    return false
  }

  // metodo para sumar dos numeros, si es de la forma a + b, lo lleva hasta 0 + b,
  // y luego va construyendo a + b desde b recursivamente
  method sum(other) {
    var nuevo_suc = suc.sum(other)
    var nuevo = new Church(suc = nuevo_suc)
    return nuevo
  }

  // metodo para multiplicar, a * b seria sumar b a-veces
  method mult(other) {
    return other.sum(suc.mult(other))
  }
}

class Cero{
  // metodo que da el valor, para revisar que todo este bien
  method valor(){
    return 0
  }
  
  // metodo para diferenciar Church de Cero
  method es_cero(){
    return true
  }

  // caso base de la suma, si a == 0, devolvemos b
  method sum(other){
    return other
  }

  // caso base de la mult, hay que sumar 0 veces
  method mult(other) {
    return self
  }
}
