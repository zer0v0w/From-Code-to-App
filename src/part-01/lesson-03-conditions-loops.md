# 1.3 Decisions and Loops

> Conditions let a program choose; loops let it repeat.

**Main outcome:** students can read and modify simple branches and loops, and predict their behavior before running them.

## 1. Decisions

Start with a practical question: “If the score is at least 50, should the result say Pass or Try again?” Introduce `bool`, comparison operators, and `if` / `else` together.

```dart
void main() {
  final score = 72;

  if (score >= 50) {
    print('Pass');
  } else {
    print('Try again');
  }
}
```

Cover `>`, `<`, `>=`, `<=`, `==`, `!=`, `&&`, `||`, and `!` through prediction puzzles, not a slide of symbols alone.

## 2. Repetition

Start with repeated `print()` calls, ask what is wasteful, then replace them with a loop.

```dart
for (var number = 1; number <= 5; number++) {
  print(number);
}
```

Teach the three parts of the counting loop only after students can explain the outcome. Then introduce a `for-in` loop over a provided list, and use `while` only if time permits.

## 3. Playful challenges

- Change a score so the branch takes a different path.
- Predict which of two conditions will be true.
- Make a countdown from 5 to 1.
- Print only even numbers from 1 through 10.
- Modify a loop boundary and explain the off-by-one difference.
- Make a small “guess the number” program with a fixed guess before adding interactive input.

## 4. Debugging checkpoint

Give students a short program with one intentional bug: a wrong comparison, a loop boundary that repeats one extra time, or an assignment where a comparison is intended. Ask them to predict the wrong behavior, locate the line, change one thing, and run it again.

This is a **small first debugging task**. The larger homework comes after they have used collections in the next lesson.

## Common mistakes

- Confusing `=` with `==`.
- Writing a loop that never changes its condition.
- Assuming code inside an `if` block always runs.
- Miscounting loop iterations.

## Review

1. What type of value does a condition need to produce?
2. What changes between one loop iteration and the next?
3. Predict the output of a loop with a starting value of 1 and an upper bound of 3.
4. Describe the steps you used to fix the debugging task.

## Further reading

- [Dart control flow](https://dart.dev/language/branches)
- [Dart loops](https://dart.dev/language/loops)
