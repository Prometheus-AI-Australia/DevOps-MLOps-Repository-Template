{% if cookiecutter.backend == "local" %}

{% elif cookiecutter.backend == "aws" %}
region = "ap-southeast-2"
bucket = ""
key = ""

{% elif cookiecutter.backend == "gcp" %}
credentials = "~/.gcp/{{ cookiecutter.project_slug }}.json"
bucket = ""
prefix = ""

{% endif %}