---
title: TFLint
homepage: https://github.com/terraform-linters/tflint
tagline: |
  TFLint: A Pluggable Terraform Linter
---

To update or switch versions, run `webi tflint@stable` (or `@v0.42.0` etc).

## Cheat Sheet

> TFLint is a framework and each feature is provided by plugins, the key features are as follows:
> - Find possible errors (like invalid instance types) for Major Cloud providers (AWS/Azure/GCP).
> - Warn about deprecated syntax, unused declarations.
> - Enforce best practices, naming conventions.

Run tflint in your terraform configuration directory:

```sh
tflint
```

If you are using AWS, Azure or GCP provider you should use the respective tflint plugin.
See the [Getting Started Guide](https://github.com/terraform-linters/tflint#getting-started) for more details.
