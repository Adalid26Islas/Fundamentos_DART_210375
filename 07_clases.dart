void main(){
  //El 95% en Flutter son clases
  //Clase con parametros posicionales
  final wolverine = Hero("Logan", "Regeneración");
  print (wolverine.name);
  print (wolverine.power);

  print("__________________________________________________");
  //Clase con parametros no posicionales, se pueden mandar en desorden
  final grupo = Group(type: "Super Heroes Group", name: "Justice League");
  print(grupo.toString());
  print(grupo.name);
  print(grupo.type);
  
  print("__________________________________________________");
  final brotherhood = Group(name: "Liga de Villanos");
  print(brotherhood.toString());
  print(brotherhood.name);
  print(brotherhood.type);
}
//Representación tecnologica de objetos que existen en el espacio
class Hero {
  String name;
  String power;

  //El constructor es la función que se va a llamar cuando se haga una instancia de la clase
  /*Hero(String pName, String pPower)
    :name = pName,
    power = pPower;*/
  Hero (String this.name, String this.power);
}
class Group{
  String name;
  String type;

  Group({
    required this.name, 
    //required this.type
    this.type = "No definido"
  });

  @override
  String toString(){
    return """-Grupo: $name  
-Tipo: $type""";
  } 
}