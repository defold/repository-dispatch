# Generate a repository dispatch event

Dispatch a repository event

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
