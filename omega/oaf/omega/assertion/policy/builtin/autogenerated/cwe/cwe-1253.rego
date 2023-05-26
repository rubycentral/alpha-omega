package openssf.omega.policy.autogenerated.cwe.cwe_1253

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_1253
# title: "CWE-1253: Incorrect Selection of Fuse Values"
# methodology: >
#   The logic level used to set a system to a secure state relies on a fuse being unblown. An attacker can set the system to an insecure state merely by blowing the fuse.
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
        not "cwe-1253" in assertion.predicate.content.tags
    }
}