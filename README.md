# HTTP Client for Zed

A [Zed](https://zed.dev) extension for `.http` and `.rest` files, using the syntax shared by the JetBrains HTTP Client and the VS Code REST Client.

## Features

- Syntax highlighting for request lines, headers, comments, `###` separators, file variables (`@name = value`, `{{name}}`) and `# @name` directives.
- JSON, XML and GraphQL highlighting inside request bodies.
- Outline view with one entry per request (`cmd-shift-o`).

Sending requests is not supported yet.

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

## Install as a dev extension

1. Clone this repository.
2. In Zed, run `zed: install dev extension` from the command palette.
3. Select the cloned folder.

Zed fetches and compiles the [tree-sitter-http](https://github.com/rest-nvim/tree-sitter-http) grammar on install.
