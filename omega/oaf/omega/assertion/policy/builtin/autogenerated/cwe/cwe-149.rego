package openssf.omega.policy.autogenerated.cwe.cwe_149

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_149
# title: "CWE-149: Improper Neutralization of Quoting Syntax"
# methodology: >
#   Quotes injected into a product can be used to compromise a system. As data are parsed, an injected/absent/duplicate/malformed use of quotes may cause the process to take unexpected actions.
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
        not "cwe-149" in assertion.predicate.content.tags
    }
}