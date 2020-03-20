# circleci-orb-forbid-rerun

CircleCI Orb to forbid rerun builds whose revision isn't latest.

## Motivation

In CircleCI, we can't forbid to rerun old workflows, but sometimes rerun old workflows raises undesirable result.
For example, 

* In case of application deployment, old application may be deployed
* In case of Terraform, existing resources may be destroyed

This Orb makes the build failure if the build isn't safe.

## License

[MIT](LICENSE)
