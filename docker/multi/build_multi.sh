#docker buildx ls
#docker buildx create --name mybuilder
#docker buildx use mybuilder
#docker buildx inspect --bootstrap

docker buildx build --platform linux/amd64,linux/arm64 -t darlon/demo --push .

# docker buildx imagetools inspect darlon/demo
# docker run --rm docker.io/darlon/demo:latest@sha256:<hash> uname -m


#docker buildx use linux-desktop
#docker buildx rm mybuilder

