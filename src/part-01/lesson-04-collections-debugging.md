# 1.4 Collections, Problem Solving, and Debugging

> A collection lets a program work with many related values instead of one value at a time.

**Main outcome:** students can use a `List` and a `Map`, loop through values, call a function, and debug a small program made from familiar parts.

## 1. Lists

Use an everyday theme such as a list of foods, tasks, or student scores.

```dart
void main() {
  final fruits = ['apple', 'orange', 'banana'];
  print(fruits[0]);
  print(fruits.length);

  for (final fruit in fruits) {
    print(fruit);
  }
}
```

Explain that a list is ordered and index-based, and that the first index is `0`. Demonstrate adding an item with `add()` and accessing a value by index. Explain that `final` prevents reassignment of the list variable but does not automatically make the list's contents immutable; keep this nuance brief.

## 2. Maps

Use a map to associate keys with values:

```dart
final student = {
  'name': 'Lina',
  'score': 87,
};

print(student['name']);
print(student['score']);
```

Describe it as key → value lookup. Avoid introducing type parameters deeply at first; return to `<String, int>` when students are ready to inspect types.

## 3. Functions with collections

Give students a function that receives a list and prints each item. Then let them modify it to count items, sum scores, or search for a value.

```dart
int total(List<int> scores) {
  var result = 0;
  for (final score in scores) {
    result += score;
  }
  return result;
}
```

The aim is to combine concepts they already know, not to introduce five new collection methods in one go.

## 4. Basic problem-solving routine

Teach students to make a tiny plan before writing code:

1. Restate the problem in plain language.
2. Identify the input and expected output.
3. Work one example by hand.
4. Break the problem into small steps.
5. Write a small amount of code.
6. Run it with a normal case and an edge case.
7. Explain why it works.

## 5. Debugging homework

Give students a short list/map program containing two or three bugs. The bugs should be within concepts already taught: wrong index, incorrect loop condition, incorrect key, or a function returning the wrong result.

Ask them to submit:

- The corrected code.
- The observed error or wrong output.
- A short explanation of each fix.
- One test input they added themselves.

## Common mistakes

- Using an index that is outside the list's range.
- Assuming a map key exists.
- Modifying a collection and then forgetting that its contents changed.
- Writing code before deciding what output should be produced.

## Review

- When is a list a better fit than a map?
- Why does the first list index equal zero?
- What does a function return when it reaches `return result;`?
- What makes a debugging explanation better than just pasting corrected code?

## Further reading

- [Dart collections](https://dart.dev/libraries/dart-core#collections)
- [Dart lists](https://api.dart.dev/dart-core/List-class.html)
- [Dart maps](https://api.dart.dev/dart-core/Map-class.html)
