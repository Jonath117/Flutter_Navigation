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



