void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;

  //bool? alive; puede tener tres valores: true, false, null
  final bool isAlive = true;

  //<String> deterniba el tipo de dato que habra dentro del listado
  final abilities = <String>['Impostor, Flexibilidad, Transformación'];
  final sprites = <String>['Ditto_front.png', 'Ditto_back.png'];
  
  print(""" El pokemon es: $pokemon
  --------------------------------------------------------------------
  Las estadisticas de $pokemon son:
  Vida (HP): $hp
  Estatus de vida: $isAlive
  Habilidades: $abilities
  Imagenes: $sprites""");
}
