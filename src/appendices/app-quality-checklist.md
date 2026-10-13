# Appendix D: App Quality Checklist

Use this before a project demo or GitHub submission.

## Functionality

- [ ] The app launches on the agreed target.
- [ ] Main buttons and navigation work.
- [ ] Invalid form input receives useful feedback.
- [ ] Empty, loading, success, and error states are handled where relevant.
- [ ] Repeated taps do not create confusing duplicate actions.

## UI and accessibility

- [ ] Text hierarchy is clear.
- [ ] Text remains usable with larger system font settings.
- [ ] Buttons are easy to tap.
- [ ] Important information is not communicated by color alone.
- [ ] Images have suitable sizing; important images have semantic descriptions where appropriate.
- [ ] The screen is checked on a narrower layout or second device size.
- [ ] Content can scroll without overflow.

## Code and maintainability

- [ ] Names describe the purpose of values/functions/widgets.
- [ ] Repeated UI is extracted when it meaningfully reduces duplication.
- [ ] `build()` describes UI and does not initiate repeated API requests.
- [ ] Models, services, and UI responsibilities are reasonably separated.
- [ ] At least one meaningful behavior has been tested manually or with a small automated test.

## Data and security

- [ ] Network failures and invalid responses do not crash the main flow.
- [ ] Null/optional values are handled intentionally.
- [ ] Supabase policies match the intended access.
- [ ] No password, token, private key, or service-role key is committed.
- [ ] Sample/demo data does not expose a real person's private information.

## Repository

- [ ] Project source and run instructions are in GitHub.
- [ ] README states purpose, features, prerequisites, setup, and run commands.
- [ ] Screenshots show the current app.
- [ ] Known limitations are stated honestly.
