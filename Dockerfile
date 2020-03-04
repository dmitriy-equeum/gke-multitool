FROM google/cloud-sdk

RUN apt update -y \
    && apt install -y ca-certificates gettext tar gzip openssl curl git bash \
    && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash 
    && curl https://raw.githubusercontent.com/kadwanev/retry/master/retry -o /usr/local/bin/retry && chmod +x /usr/local/bin/retry
