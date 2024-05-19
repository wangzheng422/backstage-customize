# backstage-customize

customized using upstream:
- https://github.com/backstage/backstage/blob/master/plugins/catalog-backend-module-msgraph/README.md
- https://github.com/backstage/backstage/blob/master/plugins/catalog-backend-module-azure/README.md
- https://github.com/backstage/community-plugins/blob/main/workspaces/azure-devops/plugins/azure-devops-backend/README.md
- https://github.com/backstage/community-plugins/blob/main/workspaces/azure-devops/plugins/azure-devops/README.md

- https://catalog.redhat.com/software/containers/rhdh/rhdh-hub-rhel9/645bd4c15c00598369c31aba?architecture=amd64&image=663c815db4bfe14556c9a5fe

```bash

# run the rhdp to get content
podman run -it --rm --entrypoint /bin/bash quay.io/rhdh/rhdh-hub-rhel9:1.1


# build the backstage image
mkdir -p /data
cd /data

git clone https://github.com/wangzheng422/backstage-customize
cd backstage-customize

git checkout 1.1

podman build -t quay.io/wangzheng422/qimgs:rhdh-hub-rhel9-1.1-2024.05.19.v01 -f Dockerfile .

podman push quay.io/wangzheng422/qimgs:rhdh-hub-rhel9-1.1-2024.05.19.v01


```