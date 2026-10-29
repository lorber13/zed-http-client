# CLAUDE.md

## Project

An extension for the [Zed](https://zed.dev) editor that provides an HTTP client.

## .http format

Follow the common syntax shared by the JetBrains HTTP Client and the VS Code REST Client:

- Request line (`GET https://...`), headers, blank line, body.
- `###` separates requests.
- `#` or `//` start a comment.
- File variables: declare with `@name = value`, use with `{{name}}`.
- Named requests: `# @name login`, so other requests can reference the response.
- Environments live in `http-client.env.json` (JetBrains style).

Out of scope for now: JetBrains response-handler (`> {% ... %}`) and pre-request scripts.

Use [`rest-nvim/tree-sitter-http`](https://github.com/rest-nvim/tree-sitter-http) as the grammar.

## Commits

- Use [Conventional Commits](https://www.conventionalcommits.org/) for all commit messages (e.g. `feat: ...`, `fix: ...`, `docs: ...`, `chore: ...`).

## Communication

- Be concise. Skip preambles, recaps, and restating my request.
- After finishing a task, summarize what changed in a few lines. Don't list every step you took.
- If something is ambiguous or risky, ask one short question instead of guessing.
- No unnecessary caveats or filler ("Great question!", "Let me know if...").

## Code style

- Optimize for readability over cleverness. Someone new to the codebase should follow it easily.
- Use clear, descriptive names for variables and functions; avoid abbreviations.
- Keep functions small and focused on one job.
- Prefer simple, explicit code over clever one-liners or deep abstractions.
- Don't add layers, patterns, or configurability that the task doesn't need.
- Comment the *why* behind non-obvious decisions, not the *what* that the code already says.
- Match the existing style and conventions of the project.
- Make the smallest change that solves the problem; don't refactor unrelated code unless asked.
