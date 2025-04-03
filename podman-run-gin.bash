podman build --no-cache --rm -f Containerfile -t gin:demo .
podman run --interactive --tty -p 8080:8080 gin:demo
echo "browse http://localhost:8080/hello"
