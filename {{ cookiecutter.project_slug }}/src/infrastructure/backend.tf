{% if cookiecutter.backend == "local" %}
terraform {
  backend "local" {}
}

{% elif cookiecutter.backend == "aws" %}
terraform {
  backend "s3" {}
}

{% elif cookiecutter.backend == "gcp" %}
terraform {
  backend "gcs" {}
}

{% endif %}