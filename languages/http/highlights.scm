; Request line
(method) @keyword

(request
  url: (target_url) @link_uri)

(http_version) @constant

; Headers
(header
  name: (header_entity) @property)

(header
  ":" @punctuation.delimiter)

; File variables: `@name = value` and `{{name}}`
(variable_declaration
  "@" @punctuation.special
  name: (identifier) @variable)

(variable_declaration
  "=" @operator)

(variable
  [
    "{{"
    "}}"
  ] @punctuation.special)

(variable
  name: (identifier) @variable)

; Comments and request separators
[
  (comment)
  (request_separator)
] @comment

; `### Title` names the request that follows
(request_separator
  value: (value) @title)

; Comment directives such as `# @name login`
(comment
  "@" @keyword
  name: (identifier) @keyword)

(comment
  "=" @operator)

(comment
  value: (value) @label)

; Body loaded from a file: `< ./body.json`
(external_body
  path: (path) @string.special)

; Response
(status_code) @number

(status_text) @string
