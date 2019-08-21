# Custom Google Cloud Shell Image for Jenkins-X

Custom Gougle Cloud Shell image which includes tools like `jx`.

## Build

```bash
$ cloudshell env build-local
$ cloudshell env run
$ exit
```

## Deploy

```bash
# This will trigger an automatic rebuild of your image in Google Cloud Container Builder.
$ git push origin master

# Push image to Google Container Registry
$ cloudshell env push

# Update image
# cloudshell env update-default-image --image gcr.io/apps-dev-229310/jx-cloud-shell:latest
```
