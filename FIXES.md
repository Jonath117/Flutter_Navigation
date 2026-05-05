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



