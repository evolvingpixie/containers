echo "Building"
docker buildx build --no-cache -t ghcr.io/monkeyslayer56/akkoma:latest --platform linux/amd64,linux/arm64 -f Dockerfile --push .
