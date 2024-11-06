#!/bin/bash

docker images &>/dev/null && runner=docker
podman images &>/dev/null && runner=podman

[ -n "$runner" ] || { echo "env no docker or podman"; exit 0; }
$runner image exists spksrc:cust || $runner build -t spksrc:cust -f Dockerfile
$runner run -it --rm \
--network host \
-m="4g" \
-v $(pwd):/spksrc \
-e TAR_CMD="fakeroot tar" \
spksrc:cust /bin/bash

