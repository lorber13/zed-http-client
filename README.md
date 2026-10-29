# HTTP Client for Zed

A [Zed](https://zed.dev) extension for `.http` and `.rest` files, using the syntax shared by the JetBrains HTTP Client and the VS Code REST Client.

## Features

- Syntax highlighting for request lines, headers, comments, `###` separators, file variables (`@name = value`, `{{name}}`) and `# @name` directives.
- JSON, XML and GraphQL highlighting inside request bodies.
- Outline view with one entry per request (`cmd-shift-o`).
- Send the request under the cursor with [httpyac](https://httpyac.github.io).

## Example

```http
@host = https://example.com

### Login
# @name login
POST {{host}}/login
Content-Type: application/json

{
  "user": "alice"
}
```

## Sending requests

1. Install httpyac: `npm install -g httpyac`.
2. Click the ▶ next to a request, or run `editor: spawn nearest task` with the cursor inside it.

The response shows up in the terminal panel. The task runs through `sh`, so it works on macOS and Linux but not on Windows.

Each run is a separate httpyac process, so a request that uses another request's response needs httpyac's `# @ref` line to send that request first:

```http
### Profile
# @ref login
GET {{host}}/me
Authorization: Bearer {{login.token}}
```

## Install as a dev extension

1. Clone this repository.
2. In Zed, run `zed: install dev extension` from the command palette.
3. Select the cloned folder.

Zed fetches and compiles the [tree-sitter-http](https://github.com/rest-nvim/tree-sitter-http) grammar on install.
