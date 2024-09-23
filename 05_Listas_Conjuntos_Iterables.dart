void main() {
  //La declaración de una list esta limitadad por corchetes
  //(brackets) y cada elemento debe ser individual y puede repetirse
  
  final numeros = [1,2,2,2,3,4,5,6,7,7,7,7,8,8,9,10];
  print("Ejemplo de LIST: $numeros");
  
  print("Confirmamos el tipo de dato para numeros que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta informacion de una lista tal como: ");
  print("El tamaño: ${numeros.length}");
  print(""" 
    Para acceder a los elementos debemos especificar la posicion entre []
    El primer elemento en la primera posicion es: ${numeros[0]}
    El elemento en la segunda posicion es: ${numeros[1]}
    El ultimo elemento de la lista seria: ${numeros [numeros.length -1]}
    --------------------------------------------------------------------------------
    De igual manera existen las siguientes alternativas
    Primer elemento: ${numeros.first}
    Ultimo elemento: ${numeros.last}
    --------------------------------------------------------------------------------
    Tambien tendremos acceso a algunos metodos que permitan la 
    transformación o filtrado del contenido
    por ejemplo usar *reversed* para invertir el orden original: 
    ${numeros.reversed}
    Es importante observar que la funcion *reversed* ha transformado 
    la LIST origina y 
    la retorna como un ITERABLE
  """);
  
  //Iterables
  final numerosAlReves = numeros.reversed;
  print(
      """
        Los ITERABLES son estructuras de datos que DART y los lenguajes
        para optimizar en termino de velocidad
        el acceso a los datos y propiedades
    """);
 
 print("Ejemplo de un ITERABLE: $numerosAlReves");
 print("""
    Confirmamos el tipo de dato para NUMEROSALREVES que es: ${numerosAlReves.runtimeType}
    """
 );
 
 //Conjunto de datos (SET)
 //Un set es una estructura de datos utilizada por DART, que simplifica los elementos eliminando los duplicados
 print("""
    Veamos que pasa con los conjuntos SET
    Convertimos el ITERABLE en un SET usando .toSet: ${numerosAlReves.toSet()}
    Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora
    delimita los datos usando {}.
 """);
 
 //De igual manera podemos realizar operaciones para el filtro de elementos usando .where()
 
 final numerosMayoresA5 = numeros.where((int num){
     return num > 5;
 });
 
 print(
    """ 
    Hemos filtrado sobre la LIST solo los numeros mayores a 5:
    Resultado de Filtro: ${numerosMayoresA5}
    """
);
print("Eliminando duplicados ... ${numerosMayoresA5.toSet()}");
}