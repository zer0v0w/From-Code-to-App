# Curriculum audit: gaps and beginner-readiness

## Executive assessment

The original curriculum has a strong teaching instinct: students touch code early, change things, see immediate consequences, build visible interfaces quickly, and progress toward an app they can own. The order from programming → Flutter UI → data/backend → independent project is sound.

The weakness is not the destination; it is **load and missing connective tissue**. Several sessions contain too many new abstractions at once, while a few concepts needed for later sessions are introduced too late or not explicitly at all.

This version preserves the original spirit and projects while adding the minimum scaffolding a first-year student needs.

## Critical gaps to address

| Gap | Why it matters to a beginner | Change in this curriculum |
|---|---|---|
| Setup and first run | Students can lose the session to SDK, device, editor, or dependency issues. | Move installation and `flutter doctor` into a pre-course checklist; start Session 1 with a verified sandbox. |
| Program structure and running code | `main`, `print`, files, imports, and run/re-run are invisible if students only edit isolated lines. | Introduce `main`, code/output, and the run loop briefly in Session 1; give a visible code-to-result bridge. |
| Strings and interpolation | Essential for output, UI labels, and debugging messages. | Teach string literals, simple interpolation, and naming early. |
| Boolean and comparison logic | Conditions and form validation depend on `true`/`false`, comparisons, and `&&` / `||`. | Put comparisons and boolean logic before or alongside conditions. |
| Function inputs and outputs | The sum-to-power exercise only works if parameters and return values are understood. | Teach a minimal function before the exercise; revisit return values and named parameters later. |
| Error categories and debugging | “Debug this code” is too vague if students cannot distinguish syntax, runtime, and logic errors. | Add a repeatable debug method: reproduce → read message → locate line → form hypothesis → change one thing → rerun. |
| `const` | Flutter starter code uses `const` frequently; skipping it makes ordinary widgets look mysterious. | Teach `const` alongside `final`; distinguish “cannot reassign” from “compile-time constant” at a beginner level. |
| `late` | It is easy to teach as magic and can hide initialization bugs. | Include it as a recognition/use-with-care concept, not a preferred default. Demonstrate why ordinary initialization is usually simpler. |
| Null safety | Needed for optional data, text inputs, API responses, and authentication states. | Cover `?`, null checks, `??`, `?.`, and careful avoidance of `!`; revisit real nullable data in Chapter 4. |
| State arrives too late | Buttons, form validation, loading indicators, and interactive widgets all require changing UI state. | Introduce `StatefulWidget` and `setState` during Flutter foundations; Chapter 4 covers shared/app-level state. |
| Layout constraints | Beginners otherwise treat `Row`, `Column`, `Expanded`, and scroll errors as arbitrary widget problems. | Teach the principle “constraints go down, sizes go up, parent sets position,” plus practical overflow fixes. |
| Assets and package/project anatomy | Images, dependencies, `pubspec.yaml`, imports, and asset declarations are not optional in real UI work. | Add a minimal project tour and assets/dependencies reference in Chapters 2–3. |
| Async and error states | An API call is not a synchronous function; students need to handle waiting, success, empty data, and failure. | Introduce `Future`/`async`/`await` lightly in Chapter 1, then revisit with HTTP, `try`/`catch`, and visible UI states in Chapter 4. |
| JSON and model mapping | API responses are not automatically Dart objects. | Add JSON decoding and a simple model before a full backend project. |
| Supabase data security | A working login screen is not secure authentication; database access needs policies. | Include Auth, table access, Row Level Security, client-safe publishable keys, and a warning never to expose the service-role key. |
| Separation of concerns | Without basic structure, students put network calls and app logic directly into giant widget files. | Introduce a small `model` / `service` / `view` separation in Chapter 4–5, without teaching heavyweight architecture. |
| Testing and quality checks | “Testing their work” should include repeatable checks, not only a live review. | Add a tiny pure-Dart unit test, a manual QA checklist, and optional basic widget test. |
| Git is too late if introduced only at the end | A repository is most useful when it tracks work throughout the project. | Have students make small commits during projects; keep GitHub publishing in the final chapter. |
| Accessibility/responsive UI | A screen that looks right on the instructor's device can fail at larger text or different screen sizes. | Add a small practical checklist for screen size, text scaling, contrast, touch targets, and semantics. |
| Local persistence | Common in mobile apps, but not necessary if time is tight and the main backend is Supabase. | Put persistence in the “next steps / optional extension” section rather than forcing it into the core track. |

## Beginner stress test

A true beginner is simultaneously learning programming vocabulary, editor behavior, syntax, error messages, and problem-solving habits. The danger is stacking multiple unfamiliar ideas in a single exercise.

### High-risk combinations in the original outline

1. **Conditions + loops + lists + maps + functions + debugging all in one session.** Each is manageable; all together is too much for a first exposure. This material is split over Sessions 3 and 4. Students still get a small debugging task early, but the fuller collections exercise comes after the basics.
2. **`final` / `late` + functions in depth + null safety + OOP in one two-hour meeting.** This is still a dense session. It is kept as a combined session to avoid expanding the entire calendar further, but the instructor guide prioritizes `final`/`const` and null safety, then limits OOP to classes, fields, constructors, and methods. Inheritance, interfaces, and abstract classes are deferred.
3. **Flutter concepts followed immediately by a complex static grid.** A grid requires layout, images, scrolling, and constraints. The grid must be a provided/stepwise example, not a blank-page exercise. Introduce basic layout primitives first.
4. **Forms before state.** Fixed by introducing `setState` before Chapter 3, then revisiting it in forms and validation.
5. **APIs + JSON + async + error/loading states + Supabase in three sessions.** Three sessions can work only if API access and Supabase project setup are prepared in advance and the scope is deliberately small. The material breaks this into: HTTP/JSON; rendering/loading/errors; Supabase Auth + database/RLS. Avoid adding a second state-management library or advanced architecture.
6. **A “walk-with-me” app in two sessions.** Workable if the app brief is narrow and design/API choices are preselected. It must not become a second full final project.

## Revised sequencing

1. First contact with code: variables, types, output, inputs as values, run/re-run.
2. Calculator: operators and the minimum functions needed to transform inputs into outputs.
3. Conditions and loops: logic through prediction and small experiments.
4. Lists, maps, functions in loops, problem-solving and debugging.
5. Dart language details and null safety, then beginner-level OOP.
6. Revision, practical collections tricks, and a gentle async/await introduction.
7. Flutter mental model, project structure, widgets, `build`, and `const`.
8. Layout, images, scrolling/grid, hot reload, and minimal local state.
9. Forms, input validation, navigation, reusable components.
10. Translate a pre-made design into Flutter with responsive/accessibility checks.
11. HTTP, JSON/model conversion, async, loading/success/empty/error states.
12. Supabase Auth + database reads/writes + Row Level Security.
13. State beyond one widget, simple architecture, animations, timing/curves, practical UX.
14. Two-session guided build, then final project, review, testing, and GitHub.

## Scope deliberately deferred

These are useful but should not block beginners from completing the core goal:

- Riverpod, Bloc, Redux, and comparisons among multiple state-management solutions.
- Advanced OOP (inheritance hierarchies, mixins, abstract interfaces).
- Streams, isolates, concurrency theory, and advanced asynchronous patterns.
- Complex app architecture, domain/use-case layers, dependency-injection frameworks.
- Generated JSON serialization for large models.
- Push notifications, deep links, payments, platform channels, store deployment, and CI/CD.
- Advanced animation controllers and custom painters.
- Local database persistence beyond an optional extension.

## Assessment checkpoints

Use these as evidence of readiness, not as high-stakes exams:

- **After Chapter 1:** can write and debug a small CLI program without copying every line.
- **After Chapter 2:** can change a provided Flutter UI and explain a basic widget tree.
- **After Chapter 3:** can build a form, validate input, navigate between screens, and extract a reusable widget.
- **After Chapter 4:** can fetch and display remote data, represent loading/error/empty/success, authenticate with Supabase, and explain why RLS matters.
- **After Chapter 5:** can follow a feature from design to running app with limited hints.
- **At the end:** can demo a coherent app, explain its main files, run basic tests/manual checks, and publish the source to GitHub.

## Official references used to validate the scope

- [Flutter learning pathway/tutorial](https://docs.flutter.dev/learn/pathway/tutorial) — environment, widgets, layout, DevTools, input, state, animations, HTTP, ChangeNotifier, adaptive layout, navigation.
- [Dart language tour](https://dart.dev/language) — variables, control flow, functions, classes, async, errors.
- [Flutter layout](https://docs.flutter.dev/ui/layout) and [layout constraints](https://docs.flutter.dev/ui/layout/constraints).
- [Flutter form validation](https://docs.flutter.dev/cookbook/forms/validation).
- [Fetch data from the internet](https://docs.flutter.dev/cookbook/networking/fetch-data) and [JSON serialization](https://docs.flutter.dev/data-and-backend/serialization/json).
- [Flutter app architecture](https://docs.flutter.dev/app-architecture/guide).
- [Supabase Flutter quickstart](https://supabase.com/docs/guides/getting-started/quickstarts/flutter).
- [Flutter testing overview](https://docs.flutter.dev/testing/overview).
- [Flutter accessibility](https://docs.flutter.dev/ui/accessibility).
- [mdBook SUMMARY.md format](https://rust-lang.github.io/mdBook/format/summary.html).
