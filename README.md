# env0 Workflow Demo (Pinned Revision)

This repo demonstrates env0 Workflows where each sub-environment can be pinned to a specific git revision (branch/tag/SHA)
using `revision:` in env0.workflow.yaml.

Use-case:
- Child environments default to the template/environment configured branch (often `main`)
- Workaround: pin children to a known branch (e.g., `testing`) via workflow YAML

Folders:
- iac/bc        : "BC" component
- iac/api-route : "API Route" component

How to create a visible plan diff:
- Change `marker_version` default in either component's main.tf
