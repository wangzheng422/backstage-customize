# backstage-customize

customized using upstream:
- https://github.com/backstage/backstage/blob/master/plugins/catalog-backend-module-msgraph/README.md
- https://github.com/backstage/backstage/blob/master/plugins/catalog-backend-module-azure/README.md
- https://github.com/backstage/community-plugins/blob/main/workspaces/azure-devops/plugins/azure-devops-backend/README.md
- https://github.com/backstage/community-plugins/blob/main/workspaces/azure-devops/plugins/azure-devops/README.md

```bash

# run the rhdp to get content
podman run -it --rm --entrypoint /bin/bash registry.redhat.io/rhdh/rhdh-hub-rhel9:1.1


# build the backstage image
mkdir -p /data
cd /data

git clone https://github.com/wangzheng422/backstage-customize
cd backstage-customize


podman build -t quay.io/wangzheng422/qimgs:rhdh-hub-rhel9-1.1-2024.05.18.v01 -f Dockerfile .

podman push quay.io/wangzheng422/qimgs:rhdh-hub-rhel9-1.1-2024.05.17.v02


```