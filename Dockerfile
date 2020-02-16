FROM google/cloud-sdk

RUN apt update -y \
    && apt install -y ca-certificates gettext tar gzip openssl curl git bash \
    && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash \
    && helm plugin install https://github.com/hayorov/helm-gcs
