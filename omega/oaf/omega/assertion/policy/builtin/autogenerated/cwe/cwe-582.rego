package openssf.omega.policy.autogenerated.cwe.cwe_582

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_582
# title: "CWE-582: Array Declared Public, Final, and Static"
# methodology: >
#   The product declares an array public, final, and static, which is not sufficient to prevent the array's contents from being modified.
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
        not "cwe-582" in assertion.predicate.content.tags
    }
}