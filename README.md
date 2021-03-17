# sleavely/node-awscli

Lambda-compatible NodeJS images with AWS CLI installed.

[Docker Hub](https://hub.docker.com/repository/docker/jonhines/node_aws_cli)

## Usage in CI/CD environments

Instead of using e.g. `node:12` and installing `awscli` every time the pipeline runs, just switch out the name of the image to `jonhines/node-aws_cli` with the appropriate version tag. Tags are named after the Lambda NodeJS runtime identifier.

