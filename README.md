# Generate a repository dispatch event

Dispatch a repository event.

* https://help.github.com/en/articles/events-that-trigger-workflows#external-events-repository_dispatch
* https://developer.github.com/v3/activity/events/types/#repositorydispatchevent
* https://developer.github.com/v3/repos/#create-a-repository-dispatch-event

## Usage 

```
name: My workflow

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps: [{
        name: 'Repository dispatch',
        uses: defold/repository-dispatch@1.1.4,
        with: {
            repo: 'org/repo',
            token: '${{ secrets.TOKEN }}',
            user: 'john.smith@acme.com',
            action: 'my-action'
        }
    }]
```
