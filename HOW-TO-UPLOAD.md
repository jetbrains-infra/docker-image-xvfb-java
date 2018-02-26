###How to upload image to Docker registry
1. Firstly go to folder where Dockerfile is and run next command:
`docker build -t latest .`

2. Tag your image with our registry: 
` docker tag <image-name> <registry-name>/<user-id>/<image-name>`

3. Push image to registry with a command: 
`docker push <registry-name>/<user-id>/<image-name>`

4. Check that this worked by running:
`docker images`. You should see both `<image-name>` and `<registry-name>/<user-id>/<image-name>` listed.