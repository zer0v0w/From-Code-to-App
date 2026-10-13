# 1.2 Operations and the Calculator

> A program can transform inputs into outputs; a function gives a useful operation a name.

**Main outcome:** students can trace an arithmetic expression, change an operator, and call a simple function with arguments.

## Teaching flow

### 1. Start with the calculator (0–10 min)

Show a tiny calculator with two values and one operation. Begin with addition, then ask what a single symbol change might do.

```dart
void main() {
  final first = 8;
  final second = 2;
  print(first + second);
}
```

Explore `+`, `-`, `*`, `/`, and `%` with small values. Show one example of parentheses changing evaluation order. Do not turn this into a math lecture.

### 2. Make the operation visible (10–30 min)

Ask students to predict results for expressions before executing them. Cover arithmetic versus comparison operators at a basic level, but leave conditions for the next lesson.

```dart
print(8 + 2); // 10
print(8 * 2); // 16
print(8 % 3); // 2
```

### 3. Introduce a function only as needed (30–50 min)

A function is a named, reusable operation. Parameters are its inputs; `return` gives a result back to the caller.

```dart
int sum(int a, int b) {
  return a + b;
}

void main() {
  print(sum(8, 2));
}
```

Trace the values of `a` and `b` on the board. Distinguish returning a value from printing a value.

### 4. The modification challenge (50–75 min)

Give students a function that calculates a sum. Ask them to change its behavior to calculate a power instead. Provide the import and unfamiliar library call as scaffolding so the lesson stays focused on changing behavior rather than library research:

```dart
import 'dart:math' as math;

num calculate(int base, int exponent) {
  return math.pow(base, exponent);
}
```

Let them first rename the function and then test `calculate(2, 3)`. Restrict the exercise to non-negative integer exponents for now. Later, when loops are understood, students can implement a simple power function themselves.

### 5. Calculator extension (75–105 min)

Students modify a provided calculator by changing the operation, adding a new operation, or changing the values. If the class is progressing well, let them make the operation a parameter rather than duplicating code.

### 6. Retrieval (105–120 min)

Ask students to describe the flow: arguments → parameters → calculation → return value → output.

## Common mistakes

- Thinking `return` and `print` mean the same thing.
- Forgetting that a function call executes the function.
- Confusing a parameter (the name in the function declaration) with an argument (the value passed into the call).
- Modifying several things at once and losing track of which change caused the result.

## Further reading

- [Dart functions](https://dart.dev/language/functions)
- [Dart math library](https://api.dart.dev/dart-math/dart-math-library.html)
