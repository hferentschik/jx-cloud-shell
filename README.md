# Custom Google Cloud Shell Image for Jenkins-X

Custom Gougle Cloud Shell image which includes tools like `jx`, `k9s`, `krew` and more.

## Build

```bash
$ cloudshell env build-local
$ cloudshell env push
```

## Deploy

```bash
$ cloudshell env update-default-image --image gcr.io/apps-dev-229310/jx-cloud-shell:latest
```

## Configure

Add the following to your `~/.bashrc` in the cloud-shell:A

```bash
export KREW_ROOT=/krew
export PATH=$PATH:~/bin:$KREW_ROOT/bin
source /scripts/bash_aliases
```
