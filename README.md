# env0 PR Preview Demo (Environment Discovery)

This repo demonstrates env0 Environment Discovery creating PR preview environments from folders and running PR plans
against the PR branch revision.

Folder layout:
- iac/envs/<stage>/<env-name> is an environment folder
- iac/modules is shared code

To force a visible plan change:
- Bump marker_version in any env folder main.tf
