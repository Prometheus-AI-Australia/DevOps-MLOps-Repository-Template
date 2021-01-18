# {{ cookiecutter.project_name }}

## Introduction
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id est 
commodo, cursus risus sed, semper tortor. Nunc venenatis blandit nisi, ut 
iaculis lacus tincidunt eu. Pellentesque leo sapien, euismod quis pulvinar non, 
tempus quis ex. Sed nec dolor eu dolor aliquet ullamcorper. Ut varius bibendum 
aliquet. Fusce finibus molestie velit, non hendrerit massa tincidunt ut. Duis 
sollicitudin molestie sollicitudin. Quisque vitae consectetur enim. Interdum et 
malesuada fames ac ante ipsum primis in faucibus.

## Architecture
![Solution Architecture Diagram](architecture.png)

## Installation
The minimum requirements to install this project are:

- Conda
- Terraform

Installation requires that you run the following steps.

1. Initialise your python virtual environment (`make conda`).
2. Activate your python virtual environment (`conda activate {{ cookiecutter.project_slug }}`).
3. Run the installation target (`make init`).

## Deployment
All deployments are managed using [Terraform]https://www.terraform.io/), a 
cloud-agnostic infrastructure-as-code solution. You can alter the configurations
of each Terraform deployment via the `/configuration/terraform/*.tfvars` files.

Once you are happy with the configuration, you can run the following target to
deploy the solution into your cloud environment.

```bash
make infrastructure
```

## Testing
All Python tests are managed via [pytest](https://docs.pytest.org/en/stable/). 
There is a predefined utility target which will cover 90% of desired executions
of pytest.

```bash
make tests
```
