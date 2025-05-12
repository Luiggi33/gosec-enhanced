import json, sys

gosecJson = json.load(sys.stdin)

for item in gosecJson["Issues"]:
    lines = item["line"].split("-")
    startLine = lines[0]
    endLine = lines[1]
    if not lines[1]:
        endLine = lines[0]
    warningMsg = f"{item["rule_id"]} (CWE-{item["cwe"]["id"]}): {item["details"]} (Confidence: {item["confidence"]}, Severity: {item["severity"]})"
    print(f"::error file={item["file"]},line={startLine},endLine={endLine}::{warningMsg}")
