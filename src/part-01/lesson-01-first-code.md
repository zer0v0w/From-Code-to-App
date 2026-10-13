# 1.1 First Contact with Code

> Code is a set of instructions and values that a computer evaluates; a small edit can change the program's behavior.

**Session length:** 120 minutes. **Prerequisites:** environment is already prepared. **Main outcome:** students can read a tiny Dart program, change data, run it, and describe what changed.

## Learning outcomes

Students can identify a variable, a value, a basic type, a program output, and the difference between changing data and changing a program's instructions.

## Suggested teaching flow

### 1. Start with a visible change (0–10 min)

Show one tiny program. Ask students to predict the output before you run it.

```dart
void main() {
  var fruit = 'apple';
  print(fruit);
}
```

Change `'apple'` to `'orange'` and run again. Do not begin with a long definition. Let them notice the cause-and-effect relationship first.

### 2. Explain the smallest mental model (10–30 min)

- A **value** is a piece of data, such as `'apple'`, `7`, or `true`.
- A **variable** is a named place/reference through which the program works with a value.
- A **type** describes the kind of value, such as `String`, `int`, `double`, or `bool`.
- `print()` sends text to the console/output area.
- `main()` is where a Dart command-line program begins.

Show these examples and ask what type each value has:

```dart
String fruit = 'apple';
int quantity = 3;
double price = 2.5;
bool isAvailable = true;
```

Then compare an explicit type with inference:

```dart
var name = 'Mira'; // Dart infers String.
```

Keep the details light. The aim is to recognize the concepts, not memorize every declaration rule.

### 3. Input and output (30–45 min)

Explain the general idea:

- **Input:** information supplied to a program.
- **Processing:** the program works with the information.
- **Output:** information the program produces.

Use editable variables as the first kind of input, then show one real console-input example on the instructor's machine:

```dart
import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  final name = stdin.readLineSync();
  print('Hello, $name!');
}
```

Explain only the flow: prompt → keyboard input → value stored → output. `readLineSync()` can return a nullable value; do not teach the full null-safety rules here. This example needs a command-line environment and may not work in every browser sandbox. Explain that real apps receive input through different interfaces, such as a text field or button.

### 4. Guided sandbox experiments (45–70 min)

Ask students to make one edit at a time:

1. Rename `fruit` to `snack` everywhere.
2. Change `'apple'` to `'orange'`.
3. Change `quantity` from `3` to `10`.
4. Change the type of a value, then observe what breaks if the assigned value is incompatible.
5. Introduce a typo deliberately and read the error.

After each edit, ask: **What do you expect to happen, and why?**

### 5. The prepared Flutter bridge (70–90 min)

Use a starter Flutter app whose widget tree is already written and hidden from the lesson. The student-editable part is a Dart value that the starter displays:

```dart
var fruit = 'apple';
// The prepared UI displays the value of `fruit`.
```

Students change `apple` to `orange`, save, and use hot reload. Explain only that the running app reflects the value; do not teach the widget tree yet. This is a prepared bridge, not a separate Dart file automatically connected to a Flutter process.

### 6. Mini challenge (90–110 min)

Students create a small “snack receipt” that stores an item name, quantity, and price, then prints a readable line of output. Provide the first example, but ask them to change the data and sentence themselves.

### 7. Retrieval (110–120 min)

Without looking, students explain:

- What is the variable name in `var fruit = 'apple';`?
- What is the value?
- What does `print()` do?
- What changed when the value changed? What would happen if the variable name changed but one use was not updated?

## Common beginner mistakes

- Treating quotes as part of the text value rather than Dart syntax.
- Changing a variable's name in one place but not in its other uses.
- Confusing `=` (assignment) with `==` (comparison); reserve full comparison coverage for Session 3.
- Assuming every error means they are “bad at coding.” Use errors as feedback.

## Further reading

- [Dart: Hello World and variables](https://dart.dev/language)
- [Dart variables](https://dart.dev/language/variables)
- [Flutter hot reload](https://docs.flutter.dev/tools/hot-reload)
