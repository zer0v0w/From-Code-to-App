# 1.6 Revision, Collections Tricks, and Async

> Consolidation is part of learning: students retrieve and combine ideas rather than only encountering new ones.

**Main outcome:** students can combine core Dart concepts and explain what `Future`, `async`, and `await` mean at a beginner level.

## Part A — Revision through a single program

Begin with a small program that tracks a list of tasks or scores. Ask students to identify and explain the variables, types, condition, loop, collection, function, and class. Then ask them to change the behavior before you add new content.

Review useful collection operations only when they solve a visible problem:

- `add()` to append.
- `length` to count.
- `contains()` to test membership.
- `where()` to filter a list.
- `map()` to transform values (clarify that this is the list transformation method, not the `Map` key/value collection type).
- `for-in` to process items one by one.

Do not teach list operations as a disconnected vocabulary list. Compare a loop to a `where()` or `map()` example and explain why the method is useful.

## Part B — Async as a preview, not a deep dive

A synchronous line finishes before the program moves to the next line. Some operations, such as network requests, take time. Dart represents a future result with a `Future`.

```dart
Future<String> loadMessage() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Ready';
}
```

Explain only:

- `Future<String>` means the string will be available later (or an error will occur).
- `async` marks a function that uses asynchronous syntax.
- `await` waits for the future's result without blocking the app's event loop.

Do not turn this into a lecture about isolates, streams, or the event loop. Students will use async/await practically when they fetch data in Chapter 4.

## Short exercise

Students call a provided asynchronous function and display its result in a CLI example. They should explain the difference between receiving a `Future` and receiving the value from that future.

## Chapter 1 readiness check

Students should now be able to complete the CLI project without copying the entire solution. Notes are allowed. Search and documentation are tools, not cheating; the assessment is whether they can connect the pieces and explain their code.

## Further reading

- [Dart asynchronous programming](https://dart.dev/language/async)
- [Dart concurrency](https://dart.dev/language/concurrency)
- [Dart lists and collections](https://dart.dev/libraries/dart-core#collections)
