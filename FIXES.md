# Lista de mejoras realizadas al proyecto

## Manejo de rutas

### Antes
Las rutas estaban definidas con strings "quemados" directamente en el `MaterialApp` y en cada navegación.

```dart
//app.dart
MaterialApp(
  routes: {
    '/': (context) => HomeScreen(),
    '/task-detail': (context) => TaskDetailScreen(),
  },
)
```

[Link al Commit de navegacion de rutas](https://github.com/Jonath117/Flutter_Navigation/commit/68e56580769c50d73d87364a074152ca3024a430) 


## Parametros en el constructor

### Antes
La clase `ReviewFormScreen` le faltaba el atributo `super.key`.  
Util para que Flutter identifique de forma unica cada widget en el arbol, lo que ayuda a preservar el estado (como la posición de scroll o datos en un formulario) durante las reconstrucciones de la interfaz.

[Link al Commit de parametros en el constructor](https://github.com/Jonath117/Flutter_Navigation/commit/eeaafb46a078c5fbb2b11c7dbb96da0da808c53b) 



## Correciones sobre los import

### Antes
Se usaban rutas relativas definidas en relacion a la carpeta donde estamos parados.

### Ahora
Se usan package imports (rutas absolutas), que parten desde la raiz del proyecto

[Link al Commit](https://github.com/Jonath117/Flutter_Navigation/commit/21e79c80bca7105c14b9873d8f9db797e17bedad)
## Uso de una arquitectura

### Antes
No habia un arquitectura como tal definida, solo se hacia una minima separacion entre entidades

### Ahora
Se aplico la arquitectura BLoC (Bussines Logic Component) separando la logica de la vista.

bash
```
lib/
├── models/
│   └── task_model.dart              
├── blocs/
│   ├── task_bloc.dart               ← 
│   └── review_bloc.dart             ← 
├── screens/
│   ├── home_screen.dart             
│   ├── task_detail_screen.dart      
│   └── review_form_screen.dart      
├── app.dart                         
└── main.dart                       
```

[Link al Commit](https://github.com/Jonath117/Flutter_Navigation/commits/feat/implementacion-arquitectura-BLoC/)