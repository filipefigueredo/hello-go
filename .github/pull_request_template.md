## Overview

Thank you for your contribution! to the **main** branch. The master branch is where official release history is kept. This is the place to go if you're submitting a hotfix a feature or preparing a release.

- **Note**: The entire master branch codebase will be used in the production environment.

## PR Checklist

Please ensure the following before submitting this PR:

<!--- Please, check all of the following options that apply using 'x'. -->

- [ ] You complied with our [Pull Request Submission Guidelines](CONTRIBUTING.md).
- [ ] The code builds without errors or warnings(hint: `go build -v ./...`).
- [ ] The linting tools were executed without errors or warnings(hint: `golint`).
- [ ] Tests for the changes have been added (for bug fixes / features)
- [ ] The coverage tests were executed without any errors or warnings(hint: `go test -v ./...`).
- [ ] The changelog was updated in `./CHANGELOG.md` file.
- [ ] The documentation content was updated in `./README.md` file.
- [ ] Whenever possible, the dependencies were updated to the latest compatible versions(hint: `go get -u ./...`).

## PR Type

What kind of change does this PR introduce?

<!-- Please check the one that applies to this PR using "x". -->

- [ ] Bugfix.
- [ ] Feature
- [ ] Code style update (formatting, local variables)
- [ ] Refactoring (no functional changes, no api changes)
- [ ] Build related changes
- [ ] CI related changes
- [ ] Documentation content changes.
- [ ] Other... Please describe:

### Issue

Issue Number: (Insert here issue number from JIRA or put 'N/A'. Example: [NMBRS-XXXXX](https://nmbrsdev.jira.com/browse/NMBRS-XXXXX))

### What is the new behavior?

<!-- Please describe the current behavior that you are modifying, or link to a relevant issue. -->

### How to test it

<!-- Please describe how to test the current behavior. -->

### Does this PR introduce a breaking change?

<!--- Please, mark all of the following options that apply with a 'X'. -->

- [ ] Yes.
- [ ] No.

### Other information

<!-- You can add here any additional information to this PR. -->
<!-- If this PR contains a breaking change, please describe the impact and migration path for existing applications below. -->
