# Sample Finding

- Finding ID: F-001
- Asset: Web application authentication service
- Affected component: password reset workflow
- Severity: High
- Likelihood: Medium
- Impact: High

## Description

The password reset flow accepts a user-controlled value in a request parameter and does not enforce a time-bound reset token with an adequate integrity check. The reset operation appears to be based on a predictable identifier, which may enable unauthorized account access if an attacker can infer or enumerate valid reset tokens.

## Evidence

- Weak token entropy observed during review
- Missing server-side validation for token lifecycle
- Reset endpoint allows repeated attempts without rate limiting

## Impact

If exploited, this could allow unauthorized account takeover and exposure of sensitive user data.

## Validation

Review the reset generation code, confirm token randomness and expiry rules, and validate in a controlled test account without affecting real users.

## Remediation

- Generate cryptographically secure reset tokens
- Bind tokens to a single user and expiry window
- Enforce rate limiting and audit logging
- Require re-authentication for sensitive flows

## Verification

Confirm that reset tokens are invalidated after use and that the reset flow cannot be abused through enumeration or brute force in the test environment.
