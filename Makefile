.PHONY: deploy
deploy:
	docker build -t REGION.pkg.dev/PROJECT-ID/path/to/registory:tag -f Dockerfile .
	docker push REGION.pkg.dev/PROJECT-ID/path/to/registory:tag