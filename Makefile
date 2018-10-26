build-dev:
	docker build -f Dockerfile.dev .

# -v /app/node_modules  --  no colon so don't touch
# -v $(pwd):/app $(id)  --  mount the src and other files for the docker image
run-dev:
	docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app $(id)

test-dev:
	docker exec -it $(id) npm run test
