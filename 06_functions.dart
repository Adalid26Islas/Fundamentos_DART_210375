void main(){
    //Funciones
    //1. Llamada de una función
    greetEveryone();
    
    //2. Llamado de una funcion que retorna un valor
    //2.1 Si no deseamos almacenar el valore, se invoca normalmente
    print("Hoy es el dia numero: ${getDayNumber()}");
    //2.2 Si necesitamos almacenar el valor retornado para utilizar su valor en otras operaciones
    final numeroDia = getDayNumber();
    print("En 3 dias estaremos a: ${(numeroDia + 3)}");
    
    //3. Llamado de una función que recibe el parametro de nombre
    print (greetSomeone("Adalid"));
    print (greetSomeone(26));
    print (greetSomeone(3.1416));
    print (greetSomeone(true));
    print (greetSomeone(-15));
    
    //4. Lamado de una funcion que recibe un parametro tipificado 
    print (greetSomeoneTyped("Arely"));
    //print (greetSomeoneTyped(26));
    //print (greetSomeoneTyped(3.1416));
    //print (greetSomeoneTyped(true));
    //print (greetSomeoneTyped(-15));
    
    //5. Llamado de una funcion que recibe mas de un parametro
    //Para este caso los parametros deben ser enviasdos en la posicion exacta y segun 
    //DART ambos por defecto son obligatorios.
    print (greetSomeoneHourOfDay("Adalid", null));
    print ("______________________________________________");
    
    //print (greetSomeoneHourOfDay(null, null));
    //print (greetSomeoneHourOfDay("Adalid"));
    //print (greetSomeoneHourOfDay(11));
    
    //Analizando la funcion determinamos que la hora puede ser nula y se puede definir la hora del sistema operativo
    
    
    //6. Funciones Lambda (Funciones anonimas, arrow functions, funciones flecha)
    /*
        Las funciones lambda, tambien conocidas como funciones anonimas, arrow functions o funciones de flecha
        se ejecutan de manera simple y no frecuente en la ejecución de un programa o sistema,
        en DART estas funciones solo pueden tener una sola instrucción para usar el operador =>
    */
    final double costoTotal;
    var calculaTotal = (double productQuantity, double productPrice, double percentageDiscount) =>
        (productQuantity*productPrice)*((100-percentageDiscount)/100);
    double cantidad = 3.180;
    double precio = 1725.10;
    double descuento = 8;
    
    print("""Cantidad del producto: ${cantidad}
Costo del producto: ${precio}
Descuento: ${descuento}
Total: ${calculaTotal(cantidad, precio, descuento)}
""");

//7. Llamado de una funcion con parametors nombrados
print (infoCarListStatus(buyerName: "Adalid",amountCarList:1200, status: "En espera de pago" ));
//7.1 Llamado de una funcion con paramteros nobrados en desorden
print (infoCarListStatus(amountCarList:1800, 
                        buyerName: "Arely",
                        status: "En espera de pago" ));


}
//1. Funciones sin parametros y sin retorno de valor
greetEveryone(){
    //Funcion dinamica
    print("Hola a todos");
}
//2. Funciones que retornan valores
int getDayNumber(){
    DateTime now = DateTime.now();
    return now.day;
}
//3. Funciones que necesiten al menos un parametro (SIN TIPIFICACIÓN)
String greetSomeone(name){
    return "Hola, ${name}";
}
//4. Funciones que necesiten al menos un parametro (CON EL PARAMETRO TIPIFICADO)
String greetSomeoneTyped(String name){
    return "Hola, ${name}";
}
//5. Funciones que reciben mas de un parametro
String greetSomeoneHourOfDay(String name, [int? hourDay]){
    String greeting;
    
    //El operador ??= que si es nullo lo inicialize como, en caso de que tenga valor ignora la instucción
    hourDay ??= DateTime.now().hour;
    print("Hora ${hourDay}");
        if(hourDay >= 6 && hourDay < 12)
        {
            greeting = "Buenos dias";
        }else if(hourDay >= 12 && hourDay < 18)
        {
            greeting = "Buenas tardes";
        }else{
            greeting = "Buenas Noches";
        }
    return "${greeting}, ${name}";
}

//Funciones Lambda (Funciones anonimas, arrow functions, funciones flecha)
//Deben estar dentro del main

//07. Funciones con parametros nombrados

String infoCarListStatus({required String buyerName, double amountCarList = 0.0, String status = "Selección de productos" }){
    return """El carrito de compras de: ${buyerName}, 
tiene un total de:\$${amountCarList} y
actualmente esta en estatus: ${status}
""";
}














