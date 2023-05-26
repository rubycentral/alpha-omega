package openssf.omega.policy.autogenerated.cwe.cwe_370

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_370
# title: "CWE-370: Missing Check for Certificate Revocation after Initial Check"
# methodology: >
#   The product does not check the revocation status of a certificate after its initial revocation check, which can cause the product to perform privileged actions even after the certificate is revoked at a later time.
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
        not "cwe-370" in assertion.predicate.content.tags
    }
}