# Building Mobile Apps with Dart & Flutter — mdBook source

This is an **editable curriculum book project**, organized using the same broad publishing model as the Rust Book: a strict table of contents, one Markdown source file per page, focused concept lessons, staged projects, and separate appendices/reference material.

It is a curriculum and teaching-manual draft, not a fully scripted textbook. Each session page contains learning outcomes, a teach/do/review sequence, beginner pitfalls, and references so an instructor can turn it into live instruction and slide material.

## Build the book

1. Install [mdBook](https://rust-lang.github.io/mdBook/guide/installation.html).
2. From this directory, run:

   ```bash
   mdbook serve --open
   ```

   Use `mdbook build` to generate static HTML in `book/`.

3. Edit `src/SUMMARY.md` to add, remove, rename, or reorder pages. Every included Markdown page should appear there.

## Design decisions

- **Audience:** absolute beginners / first-year CS students, with no assumption of prior programming experience.
- **Delivery assumption:** sessions are planned around 120 minutes unless stated otherwise. Adjust after a pilot session.
- **Approach:** explain briefly, demonstrate visibly, let students change something, discuss mistakes, then retrieve/apply without looking.
- **Technology path:** Dart fundamentals first, then Flutter with the UI scaffold introduced gradually.
- **State:** basic `StatefulWidget`/`setState` appears before forms and interactive screens; a chosen shared-state approach is introduced later.
- **Backend:** Supabase is taught with authentication, database access, loading/error states, and Row Level Security. Never put a privileged service-role key in a mobile client.
- **References:** prefer official Dart, Flutter, mdBook, and Supabase documentation. APIs and docs can change; check them when teaching.

## Important implementation note for Session 1

The idea of editing a Dart value and seeing an already-running Flutter UI change is possible without teaching Flutter syntax, but the demo must be prepared. Use a prebuilt Flutter starter where the only student-editable line is a Dart value (for example `var fruit = 'apple';`) that the hidden scaffold passes to a `Text` widget. Students edit the value and use hot reload. This is not a separate pure-Dart file magically connected to a Flutter app; it is a Flutter starter with the UI implementation hidden from the first lesson. Teach Dart semantics first and reveal the Flutter scaffolding later.

## Contents

- `CURRICULUM_AUDIT.md` — gap analysis, beginner stress test, and changes made.
- `TEACHING_PAGE_TEMPLATE.md` — reusable lesson/page template.
- `src/` — mdBook source pages.
- `book.toml` — mdBook configuration.
