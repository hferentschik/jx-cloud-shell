#!/bin/bash

set -e

cloudshell env build-local
cloudshell env push
cloudshell env update-default-image --image gcr.io/apps-dev-229310/jx-cloud-shell:latest
