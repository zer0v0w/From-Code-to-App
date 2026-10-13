# Appendix A: Dart Cheat Sheet

## Values and variables

```dart
var name = 'Mira';          // inferred String
String city = 'Nablus';     // explicit type
int count = 3;
double price = 2.5;
bool isReady = true;
final createdAt = DateTime.now();
const maxItems = 10;
```

- `var`: infer a type; the variable may be reassigned to another value of the same type.
- `final`: assign once.
- `const`: compile-time constant.
- `late`: promise that a non-nullable variable will be initialized before use; avoid unless necessary.

## Strings

```dart
final greeting = 'Hello, $name';
final summary = '${count * price} total';
```

## Conditions and loops

```dart
if (count > 0) {
  print('Has items');
} else {
  print('Empty');
}

for (var i = 0; i < 3; i++) {
  print(i);
}

for (final item in items) {
  print(item);
}
```

## Functions

```dart
int add(int a, int b) => a + b;

String greet({required String name}) {
  return 'Hello, $name';
}
```

## Collections

```dart
final names = <String>['Mira', 'Omar'];
final scores = <String, int>{'Mira': 91, 'Omar': 86};

names.add('Lina');
print(names.length);
print(scores['Mira']);
```

`List` is an ordered sequence. `Map` associates keys with values. Remember that looking up a missing key can produce `null`.

## Null safety

```dart
String? optionalName = null;
final displayName = optionalName ?? 'Guest';

if (optionalName != null) {
  print(optionalName.length);
}
```

- `T?`: value may be null.
- `??`: fallback if the left side is null.
- `?.`: access only when non-null.
- `!`: assert non-null; can fail at runtime.

## Classes

```dart
class Task {
  Task(this.title);
  final String title;
  bool isDone = false;
}
```

## Async

```dart
Future<String> loadLabel() async {
  await Future.delayed(const Duration(milliseconds: 300));
  return 'Done';
}
```

Use the official [Dart language tour](https://dart.dev/language) for full syntax and details.
