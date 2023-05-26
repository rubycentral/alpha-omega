package openssf.omega.policy.autogenerated.cwe.cwe_1301

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_1301
# title: "CWE-1301: Insufficient or Incomplete Data Removal within Hardware Component"
# methodology: >
#   The product's data removal process does not completely delete all data and potentially sensitive information within hardware components.
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
        not "cwe-1301" in assertion.predicate.content.tags
    }
}