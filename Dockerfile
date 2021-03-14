FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine
COPY --from=alpine/helm /usr/bin/helm /usr/bin/helm
RUN apk --no-cache --update add git htop rsync sed 
RUN gcloud components install kubectl
RUN rm -rf /google-cloud-sdk/.install /google-cloud-sdk/platform/anthoscli_licenses /google-cloud-sdk/bin/kubectl.* /google-cloud-sdk/bin/anthoscli