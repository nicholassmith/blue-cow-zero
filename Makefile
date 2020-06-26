build: ## Build the container
	docker build -t blue-cow-zero .

run: build
	docker run blue-cow-zero:latest