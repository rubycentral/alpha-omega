package openssf.omega.policy.autogenerated.cwe.cwe_219

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_219
# title: "CWE-219: Storage of File with Sensitive Data Under Web Root"
# methodology: >
#   The product stores sensitive data under the web document root with insufficient access control, which might make it accessible to untrusted parties.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-219" in assertion.predicate.content.tags
    }
}