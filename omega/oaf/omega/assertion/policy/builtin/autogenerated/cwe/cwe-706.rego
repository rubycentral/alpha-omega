package openssf.omega.policy.autogenerated.cwe.cwe_706

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_706
# title: "CWE-706: Use of Incorrectly-Resolved Name or Reference"
# methodology: >
#   The product uses a name or reference to access a resource, but the name/reference resolves to a resource that is outside of the intended control sphere.
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
        not "cwe-706" in assertion.predicate.content.tags
    }
}