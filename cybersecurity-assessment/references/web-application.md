# Web Application Security

## Core review areas

- authn and authz flows
- session handling and token security
- input validation and output encoding
- file upload and download handling
- SSRF, CSRF, clickjacking, and CORS
- unsafe deserialization
- SQL injection and NoSQL injection
- command injection and OS command execution
- path traversal and unsafe file access
- XSS and content injection
- rate limiting and abuse prevention
- security headers and transport security

## Useful checks

- Is the application enforcing least privilege?
- Are input validation and output encoding consistently applied?
- Does the app fail securely when errors occur?
- Are secrets and sensitive data properly protected?
- Are trust boundaries clearly enforced between user input and privileged actions?

## Evidence to look for

- unescaped user-controlled content in templates or responses
- direct SQL generation from user parameters
- access control checks missing or inconsistent
- insecure default settings for cookies or headers
- unsafe file operations and executable uploads
