# Appendix B: Flutter UI Cheat Sheet

## App shape

```dart
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: const Center(child: Text('Hello')),
      ),
    );
  }
}
```

## Common layout widgets

| Need | Common starting point |
|---|---|
| Horizontal arrangement | `Row` |
| Vertical arrangement | `Column` |
| Space around a child | `Padding` |
| Fixed gap | `SizedBox` |
| Take available flex space | `Expanded` / `Flexible` |
| Scrollable vertical content | `ListView` |
| Scrollable grid | `GridView` |
| Overlap or position children | `Stack` |
| Visual box with decoration | `Container` / `DecoratedBox` |
| Display text | `Text` |
| Display image | `Image.asset` / `Image.network` |

## State

- Use `StatelessWidget` when the widget itself does not own changing local state.
- Use `StatefulWidget` for local state that changes during the widget's lifetime.
- Call `setState` after changing local state so Flutter knows to rebuild.
- Keep network logic out of `build()`; build can be called repeatedly.

## Navigation

Use `Navigator.push` to open another route/screen and `Navigator.pop` to go back for simple beginner examples. Use a more advanced routing setup only if the app needs it.

## Forms

Use `Form`, `GlobalKey<FormState>`, `TextFormField`, a validator, and a submit callback. A validator returns an error string when invalid and `null` when valid.

## Layout rule

**Constraints go down. Sizes go up. Parent sets position.**

See [Flutter layouts](https://docs.flutter.dev/ui/layout), [navigation](https://docs.flutter.dev/ui/navigation), and [form validation](https://docs.flutter.dev/cookbook/forms/validation).
