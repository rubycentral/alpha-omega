package openssf.omega.policy.autogenerated.cwe.cwe_754

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_754
# title: "CWE-754: Improper Check for Unusual or Exceptional Conditions"
# methodology: >
#   The product does not check or incorrectly checks for unusual or exceptional conditions that are not expected to occur frequently during day to day operation of the product.
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
        not "cwe-754" in assertion.predicate.content.tags
    }
}