# Azure DevOps Deployment Queuing for YAML Pipelines

Deployment Queue Settings is a feature of Classic Release pipelines that "define the behavior when multiple releases are queued for deployment." This [includes a setting that specifies][1] what should happen if a newer build is queued while an existing build is queued or waiting for approval. This extension aims to emulate the _"Deploy latest and cancel the others"_ capability for YAML multi-stage pipelines.

By default, YAML pipelines will remain in a pending state until they timeout -- which by default is 30 days. This extension adds functionality that will auto-cancel older pipelines when a newer build completes successfully.
