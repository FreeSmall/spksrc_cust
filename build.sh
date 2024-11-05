podman run -it --rm \
--network host \
-m="4g" \
-v $(pwd):/spksrc \
-e TAR_CMD="fakeroot tar" \
ghcr.io/synocommunity/spksrc /bin/bash

