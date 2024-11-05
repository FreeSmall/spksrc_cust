#!/bin/bash

podman image exists spksrc:cust || podman build -t spksrc:cust -f Dockerfile
podman run -it --rm \
--network host \
-m="4g" \
-v $(pwd):/spksrc \
-e TAR_CMD="fakeroot tar" \
spksrc:cust /bin/bash

