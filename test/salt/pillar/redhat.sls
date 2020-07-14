# -*- coding: utf-8 -*-
# vim: ft=yaml
---
# This formula works with no-pillars but here are some example configurations.

kubernetes:
  supported:
    - server
    - client
    - node
    - k3s
    - operators
    - devlibs
    - devtools
    - sigs
  sigs:
    wanted:
      - kind
      - krew
      - kubebuilder
    pkg:
      kind:
        version: '0.8.1'
      kubebuiler:
        version: 2.3.1
        archive:
          source_hash: ff496970f209706763f2aba2bdcefc2de8d00085b3b972b5790117b59ea4ed10
  operators:
    wanted:
      - grafana-operator
      - prometheus-operator
      - akka-cluster-operator
      - istio-operator
  devlibs:
    wanted:
      - java
      - python
      - csharp
      - javascript
      - kopf
      - k8s
      - python
      - javascript
  devtools:
    wanted:
      - audit2rbac
      - cue
      - devspace
      - dive
      - istio
      - kubectx
      - kubens
      - kudo
      - linkerd2
      - minikube
      - octant
      - skaffold
      - stern
    pkg:
      minikube:
        version: 1.12.0
        binary:
          source_hash: '3501b6c2be48183affa9497e7db6d751d92e1536267268b73ad1a936a2977122'
      devspace:
        version: 4.13.1
      kudo:
        version: '0.12.0'
      linkerd2:
        version: 20.7.1
      istio:
        version: 1.6.4
      octant:
        version: '0.13.1'
        archive:
          source_hash: b0fdf8984ac1947986ccd990b0d4ba60c1f5a1070909e734a1c57189308ed977
  client:
    version: 1.18.0
  k3s:
    version: '1.18.4+k3s1'
    pkg:
      use_upstream: binary   # script
      uri_b: 'https://github.com/rancher/k3s/releases/download'
      binary:
        source_hash: 0c19d64dde77c8bb3af1dfbac5aecea59ab4679d97dcfaa62419aaa795380490
      script:
        source_hash: b2856cee3432cf0148513b644b5369db8fa8b039793959f410aa7dfdb496b2b9
        env:
          INSTALL_K3S_BIN_DIR: /usr/local/bin
          INSTALL_K3S_BIN_DIR_READ_ONLY: false
          INSTALL_K3S_CHANNEL_URL: 'https://update.k3s.io/v1-release/channels'
          INSTALL_K3S_CHANNEL: stable
          INSTALL_K3S_EXEC: ''
          INSTALL_K3S_NAME: ''
          INSTALL_K3S_SKIP_DOWNLOAD: false
          INSTALL_K3S_SYMLINK: skip
          INSTALL_K3S_SKIP_ENABLE: false
          INSTALL_K3S_SKIP_START: false
          INSTALL_K3S_SYSTEMD_DIR: /etc/system/systemd
          INSTALL_K3S_TYPE: ''
          INSTALL_K3S_VERSION: ''
          K3S_AGENT_TOKEN: ''
          K3S_AGENT_TOKEN_FILE: ''
          K3S_CLUSTER_INIT: ''
          K3S_CLUSTER_RESET: ''
          K3S_CLUSTER_SECRET: ''
          K3S_DATASTORE_ENDPOINT: ''
          K3S_DATASTORE_CAFILE: ''
          K3S_DATASTORE_CERTFILE: ''
          K3S_DATASTORE_KEYFILE: ''
          K3S_KUBECONFIG_MODE: ''
          K3S_NODE_NAME: ''
          K3S_RESOLV_CONF: ''
          K3S_TOKEN: ''
          K3S_TOKEN_FILE: ''
          KUBECONFIG: /etc/rancher/k3s/k3s.yaml

  linux:
    altpriority: 0

  # Just here for testing
  added_in_defaults: defaults_value
  winner: defaults