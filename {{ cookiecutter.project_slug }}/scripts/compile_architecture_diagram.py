from diagrams import Diagram, Cluster

kwargs = dict(direction="LR", filename="architecture", show=False)

with Diagram("{{ cookiecutter.project_name }}", **kwargs):
    print("NOTE: The diagram-generating code hasn't been configured yet.")
    ...