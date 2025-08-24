all:
	helm template my-release . > ./build/manifest.yaml