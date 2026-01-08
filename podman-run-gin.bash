podman build --no-cache --rm --file Containerfile --tag gin:demo .
podman run --interactive --tty --publish 8080:8080 gin:demo
echo "browse http://localhost:8080/hello?name=Test"
