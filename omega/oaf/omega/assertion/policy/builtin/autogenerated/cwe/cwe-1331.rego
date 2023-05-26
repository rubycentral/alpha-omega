package openssf.omega.policy.autogenerated.cwe.cwe_1331

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_1331
# title: "CWE-1331: Improper Isolation of Shared Resources in Network On Chip (NoC)"
# methodology: >
#   The Network On Chip (NoC) does not isolate or incorrectly isolates its on-chip-fabric and internal resources such that they are shared between trusted and untrusted agents, creating timing channels.
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
        not "cwe-1331" in assertion.predicate.content.tags
    }
}