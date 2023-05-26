package openssf.omega.policy.autogenerated.cwe.cwe_774

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_774
# title: "CWE-774: Allocation of File Descriptors or Handles Without Limits or Throttling"
# methodology: >
#   The product allocates file descriptors or handles on behalf of an actor without imposing any restrictions on how many descriptors can be allocated, in violation of the intended security policy for that actor.
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
        not "cwe-774" in assertion.predicate.content.tags
    }
}