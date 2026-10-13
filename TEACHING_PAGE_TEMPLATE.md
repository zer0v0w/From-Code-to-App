# Reusable lesson-page template

Copy this structure when adding a lesson to the book. Keep it flexible: concept pages and project pages should not be forced into the same exact shape.

```markdown
# Lesson title

> One-sentence reason this topic matters.

## Learning outcomes
By the end, students can...

## Before we begin
Prerequisite concepts / files / setup.

## The mental model
A plain-language explanation, diagram, analogy, or small question.

## First example
The smallest useful example. Explain each unfamiliar line.

## Observe the result
Show output, rendered UI, compiler message, or behavior.

## Change one thing
A prediction or modification before revealing the result.

## Why it works
Connect visible behavior to the underlying rule.

## Your turn
A small task with acceptance criteria. Do not require an unexplained concept.

## Common mistakes
Likely beginner errors and how to reason about them.

## Review
Three to five questions or retrieval tasks.

## Further reading
Official documentation and optional extension.
```

## How to write a useful lesson

- One page should have one central learning problem, not every fact about the subject.
- Introduce syntax at the point where it becomes useful.
- Show one worked example before asking students to create an independent solution.
- State what the student should predict before running code.
- Show compiler/runtime output when it teaches something.
- Keep instructor talk shorter than the combined time students spend predicting, editing, discussing, and applying.
- Put optional details in an “Explore further” section or appendix.
- Use the same example domain across adjacent pages when it reduces cognitive load (fruit, expenses, tasks, campus events).
- Keep examples valid for the current Dart/Flutter stable version and re-run them before teaching.
