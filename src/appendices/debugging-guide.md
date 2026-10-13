# Appendix C: Debugging Guide

Debugging is a repeatable process, not random editing.

## The loop

1. **Reproduce:** what exact action produces the problem?
2. **Observe:** what did you expect, and what happened instead?
3. **Read:** inspect the first useful error message and the relevant line/stack trace.
4. **Classify:** syntax/compile-time, runtime, or logic/behavior error?
5. **Hypothesize:** state one reason the issue might happen.
6. **Change one thing:** avoid changing five lines at once.
7. **Run again:** did the evidence support the hypothesis?
8. **Record:** explain the cause and fix in one or two sentences.

## Error categories

- **Syntax/analyzer error:** code does not follow language/API rules or types do not match.
- **Runtime error:** the program runs but fails during execution, such as an invalid list index or a forced null assertion.
- **Logic error:** the program runs but produces the wrong result.
- **UI/layout error:** the app builds, but something is clipped, overflowing, misaligned, or absent.
- **Network/backend error:** request, credentials, permissions, or response handling failed.

## Flutter debugging checklist

- Did I read the first meaningful error, not only the last line?
- Is the widget actually in the returned tree?
- Did I change state inside `setState` where appropriate?
- Is a network call accidentally running inside `build()`?
- Is a `ListView`/`Expanded` receiving valid layout constraints?
- Does the asset path exist and appear in `pubspec.yaml`?
- Is the server response successful and the JSON key correct?
- Could the value be null?
- Is a backend policy denying access intentionally?

## Tooling

Introduce DevTools gradually: log/console first, then source-level debugger and widget/layout inspection when useful. Do not try to teach the entire DevTools suite in one session.

- [Flutter DevTools](https://docs.flutter.dev/tools/devtools)
- [Common Flutter errors](https://docs.flutter.dev/testing/common-errors)
