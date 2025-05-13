# GoSec Enhanced Pull Requests Action

This action comments the GoSec issues of a pull request right into the diff, to give enhanced visibility to them.

## Inputs

## `dir`

**Required** The directory to check with GoSec. **Default** `./...`



## `failOnIssue`

Should this action fail when GoSec finds an issue. Default `true`

## Outputs

None yet

## Example usage

```yaml
on:
  pull_request:

jobs:
  run_action:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Run gosec action
        uses: ./
        with:
          dir: ./exampleGoCode/...
          failOnIssue: false
```
