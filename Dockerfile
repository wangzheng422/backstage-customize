FROM registry.redhat.io/rhdh/rhdh-hub-rhel9:1.1

# RUN /bin/rm -f .npmrc yarn.lock && \
#     npm install -g yarn

# RUN yarn --cwd packages/app add @backstage-community/plugin-azure-devops
# RUN yarn -W add @backstage/plugin-azure-devops-common

COPY index.ts packages/backend/src/index.ts

# COPY EntityPage.tsx packages/app/src/components/catalog/EntityPage.tsx

