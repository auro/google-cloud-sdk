FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine
RUN apk --no-cache --update add sed git
RUN gcloud components install kubectl
