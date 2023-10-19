# Azure DevOps Deployment Queuing for YAML Pipelines

Deployment Queue Settings is a feature of Classic Release pipelines that "define the behavior when multiple releases are queued for deployment." This [includes a setting that specifies][1] what should happen if a newer build is queued while an existing build is queued or waiting for approval. This extension aims to emulate the _"Deploy latest and cancel the others"_ capability for YAML multi-stage pipelines.

By default, YAML pipelines will remain in a pending state until they timeout -- which by default is 30 days. This extension adds functionality that will auto-cancel older pipelines when a newer build completes successfully.

[![Build Status](https://dev.azure.com/ava-bcook/Deployment-Queuing/_apis/build/status%2Fbryanbcook.deploymentqueuing-extension?branchName=main)](https://dev.azure.com/ava-bcook/Deployment-Queuing/_build/latest?definitionId=72&branchName=main)

> **Note:**
>
> This extension contains a _pipeline decorator_ which [prevents it from being published as a "public" extension][2].
> To install in your Azure DevOps Organization, follow the [installation guide][3].

[1]: https://docs.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops&tabs=classic#queuing-policies

[2]: https://learn.microsoft.com/en-us/azure/devops/extend/develop/add-pipeline-decorator?toc=%2Fazure%2Fdevops%2Fmarketplace-extensibility%2Ftoc.json&view=azure-devops#3-install-the-decorator

[3]: ./docs/Installation.md
