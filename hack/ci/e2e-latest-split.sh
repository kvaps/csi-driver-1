#!/bin/bash

set -ex

export KUBEVIRT_PROVIDER=k8s-1.25

make cluster-up
make cluster-sync-split
make e2e-test
