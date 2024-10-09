abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador {
  void volar() => print("Estoy volando");
  void planear(double alturaMaxima) => 
    print("Este animal puede planear a una altura de: ${alturaMaxima} mts. de altura");
  void ascender(double distanciaMaxima) => 
    print("Este animal puede ascender a una distancia de: ${distanciaMaxima} mts. sobre el nivel del mar");
  void descender(double velocidadMaxima) => 
    print("Este animal puede descender a una velocidad de: ${velocidadMaxima} km/h");
}

//Declaración de un mixin, con la palabra reservada mixin propiamente
mixin Caminante {
  void caminar() => print("Estoy caminando");
  //
  void correr(double velocidadMaxima) => print("Este animal puede correr a una velocidad de ${velocidadMaxima} km/h");
  //
  void trotar(bool trotar) {
    if(trotar == true){ 
      print("Este animal si puede trotar");
      } else { 
        print("Este animal no puede trotar");
      }
    }
  void saltar(bool saltar) {
    if(saltar == true){ 
      print("Este animal si puede saltar");
      } else { 
        print("Este animal no puede saltar");
      }
    }
}

mixin Nadador {
  void nadar() => print("Estoy nadando");
  //
  void sumergir(double profundidadMaxima) => print("Este animal puede sumergirse a una profundidad de: ${profundidadMaxima} mts.");
  void respirar(bool respirar){
    if(respirar == true){ 
      print("Este animal puede si puede respirar fuera del agua");
      } else { 
        print("Este animal no puede respirar fuera del agua");
      }
    }
}

//Para acceder a un mixin se usa la palabra reservada with y se separan por comas en caso de que sea más de uno
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

//Animales de actividad asignados
class GatoPersa extends Mamifero with Caminante{}
class PezVela extends Pez with Nadador{}

void main(){
   final flipper = Delfin();
   print("Instanciación de la clase de Delfin, y accediendo a sus funciones");
   print("-------------------------------------------------------------------------");

   flipper.nadar();
   print("________________________________________________________________________");

   print("Instanciación de la clase de Murcielago y accediendo a sus funciones");
   print("--------------------------------------------------------------------------");

   final chupacabras = Murcielago();
   chupacabras.caminar();
   chupacabras.volar();
   print("_______________________________________________________________________");

  print("Instanciación de la clase de Pato y accediendo a sus funciones");
  print("------------------------------------------------------------------------");

  final pekines = Pato();
  pekines.caminar();
  pekines.nadar();
  pekines.volar();
  
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender(5);
  print("_______________________________________________________________________");

  print("Instanciación de la clase de GatoPersa y accediendo a sus funciones");
  print("------------------------------------------------------------------------");

  final pelusa = GatoPersa();
  pelusa.caminar();
  pelusa.correr(48);
  pelusa.trotar(true);
  pelusa.saltar(true);
  print("_______________________________________________________________________");

  print("Instanciación de la clase de PezVela y accediendo a sus funciones");
  print("------------------------------------------------------------------------");

  final pecesito = PezVela();
  pecesito.nadar();
  pecesito.sumergir(200);
  pecesito.respirar(false);
  }