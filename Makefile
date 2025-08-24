all:
	helm template my-release . > manifest.yaml