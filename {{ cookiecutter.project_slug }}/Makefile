export PROJECT = {{ cookiecutter.project_slug }}
export ENVIRONMENT ?= dev  # Allowed values: dev,uat,prod


############################
## Initialisation Targets ##
############################

conda:
	conda env update -f environment.yaml \
		|| \
	conda create -n $(PROJECT) -f environment.yaml

terraform:
	terraform init \
		-backend-config=configuration/terraform/backend.tfvars \
		src/infrastructure

init: terraform
	mkdir -p .build/

#####################
## Utility Targets ##
#####################

clean:
	find src/ -type f -name "*.pyc" -delete

environment.yaml:
	conda env export --no-builds > environment.yaml
.PHONY: environment.yaml

diagram:
	python scripts/compile_architecture_diagram.py

format:
	black .
	terraform fmt -recursive .

#####################
## Testing Targets ##
#####################

tests:
	python -m pytest tests/
.PHONY: tests

########################
## Deployment Targets ##
########################

build: clean
	python scripts/build_source.py

infrastructure: build
	terraform apply \
		-var-file=configuration/terraform/$(ENVIRONMENT).tfvars \
		src/infrastructure

destroy:
	terraform destroy \
		-var-file=configuration/terraform/$(ENVIRONMENT).tfvars \
		src/infrastructure