# 1.5 Dart Fundamentals, Null Safety, and OOP

> Dart adds rules that help make code clearer and safer; classes let related data and behavior live together.

**Important pacing note:** this is a dense session. In the first hour, prioritize `final`/`const`, `late` at a basic level, functions, and null safety. In the second hour, teach only the basics of classes and objects. Do not add inheritance or advanced OOP unless the cohort is moving unusually quickly.

## Part A — Dart language details (about 60 minutes)

### `var`, `final`, and `const`

```dart
var nickname = 'Ali'; // The variable can be reassigned.
final startedAt = DateTime.now(); // Assigned once.
const maxLives = 3; // A compile-time constant.
```

For beginners, use this simple explanation: `var` lets Dart infer the type; `final` means the variable is assigned once; `const` means the value is a compile-time constant. Avoid saying that a `final` object is always deeply immutable.

### `late`

Explain that `late` delays initialization of a non-nullable variable until later. Show it for recognition and explain the risk: reading it before assigning a value causes a runtime error. Prefer normal initialization unless there is a clear reason to use `late`.

### Functions in more depth

Revisit parameters, return values, and named parameters, because Flutter constructors use named parameters heavily.

```dart
String greet({required String name, String greeting = 'Hello'}) {
  return '$greeting, $name!';
}
```

Introduce string interpolation (`'$name'`) and explain `required` as a requirement at the call site.

### Null safety

A nullable value may be absent. Dart's type system makes this possibility explicit.

```dart
String name = 'Rana';
String? nickname = null; // Can be a String or null.

print(nickname ?? 'No nickname');
```

Teach these symbols through actual examples:

- `String?`: this value may be null.
- `value != null`: check before using the value.
- `??`: use a fallback when the left side is null.
- `?.`: access a member only if the value is not null.
- `!`: assert non-null; use carefully, because it can fail at runtime.

Do not overwhelm students with flow analysis rules. The essential lesson is to represent optional data honestly instead of pretending it must exist.

## Part B — Classes and objects (about 60 minutes)

Start with a familiar thing that has data and actions: a `Task` with a title, a completion flag, and a method to mark it complete.

```dart
class Task {
  Task(this.title) : isDone = false;

  final String title;
  bool isDone;

  void complete() {
    isDone = true;
  }
}

void main() {
  final task = Task('Review variables');
  task.complete();
  print(task.isDone); // true
}
```

Explain:

- A **class** describes a kind of object.
- An **object/instance** is created from the class.
- A **field** stores data.
- A **constructor** sets up a new object.
- A **method** is a function associated with the object.

Avoid deep theory about inheritance, interfaces, polymorphism, or design patterns here. Students need enough class knowledge to understand models and Flutter widget classes later.

## Checkpoint

Students modify `Task` to add a priority or owner, then explain which values may be null and which are guaranteed to exist.

## Further reading

- [Dart variables](https://dart.dev/language/variables)
- [Dart functions](https://dart.dev/language/functions)
- [Dart classes](https://dart.dev/language/classes)
- [Dart null safety](https://dart.dev/null-safety/understanding-null-safety)
