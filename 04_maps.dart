void main() {
final pokemon = {
  'name': 'Pikachu',
  'hp': 100,
  'sprites': {
    1: 'pikachu/front.png',
    2: 'pikachu/back.png'
  }
};

final Map <String, dynamic>trainer = {
'name' : 'Ash Ketchup',
'gender' : 'Male',
'age' : 12,
'isGymLeader' : false
};

final pokemons = {
1: 'Pikachu',
2: 'Charmander',
3: 'Squirtle'
};  

print ("""
Los datos del pokemon son:
--------------------------------
Pokemon: $pokemon
Entrenador: $trainer
Pokemones: $pokemons
""");

final sprites = pokemon['sprites'] as Map<int, String>;

print("""
Accediendo a los datos del pokemon usando los corchetes
-------------------------------------------------------
Nombre: ${pokemon['name']}
Hp: ${pokemon['hp']}
Front: ${sprites[1]}
Back: ${sprites[2]}
""");
}