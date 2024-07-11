FROM ghcr.io/coollabsio/coolify-helper:latest
COPY CRED-FILE-NAME CRED-FILE-NAME

RUN which apt && apt update && apt install -y wget jq python3 ca-certificates --no-install-recommends || true
RUN which apk && apk update && apk add wget jq python3 ca-certificates || true
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

ENV CLOUDSDK_CORE_PROJECT = PROJECT-ID

RUN gcloud auth activate-service-account \
SERVICE-ACCOUNT-ID@PROJECT-ID.iam.gserviceaccount.com \
--key-file CRED-FILE-NAME \
--project PROJECT-ID

RUN gcloud auth configure-docker REGION-docker.pkg.dev --quiet
