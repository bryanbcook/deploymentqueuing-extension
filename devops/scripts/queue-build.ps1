$project = "Demo"
$organization = "https://dev.azure.com/ava-bcook"
az devops configure --defaults organization=$organization project=$project

# let's queue some builds!
$buildDefinition = 24

az pipelines run --id $buildDefinition --project $project --branch master
az pipelines run --id $buildDefinition --project $project --branch master
az pipelines run --id $buildDefinition --project $project --branch master