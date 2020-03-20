# circleci-orb-forbid-rerun

[![CircleCI](https://circleci.com/gh/suzuki-shunsuke/circleci-orb-forbid-rerun.svg?style=svg)](https://circleci.com/gh/suzuki-shunsuke/circleci-orb-forbid-rerun)
[![GitHub last commit](https://img.shields.io/github/last-commit/suzuki-shunsuke/circleci-orb-forbid-rerun.svg)](https://github.com/suzuki-shunsuke/circleci-orb-forbid-rerun)
[![License](http://img.shields.io/badge/license-mit-blue.svg?style=flat-square)](https://raw.githubusercontent.com/suzuki-shunsuke/circleci-orb-forbid-rerun/master/LICENSE)

CircleCI Orb to forbid rerun builds whose revision isn't latest.

## Motivation

In CircleCI, we can't forbid to rerun old workflows, but sometimes rerun old workflows raises undesirable result.
For example, 

* In case of application deployment, old application may be deployed
* In case of Terraform, existing resources may be destroyed

This Orb makes the build failure if the build isn't safe.

## License

[MIT](LICENSE)
