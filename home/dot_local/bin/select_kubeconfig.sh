#!/bin/bash

# inspired by https://michaeluloth.com/neovim-switch-configs/

# assume all configs exist in directories named ~/.kube/.*kube
config=$(find ~/.kube -maxdepth 1 -regex ".*kube$" | fzf --prompt="kube configs > " --height=~50% --layout=reverse --border --exit-0)

# if i exit fzf without selecting a config, do nothing
[[ -z $config ]] && echo "no config selected" && exit 0

# export kube config
# if i run into permission errors, do something like chmod -R go+r ~/.kube
export KUBECONFIG="$config/kubeconfig"
kubectl config view

# TODO: automate giving +x permission to scripts in /usr/bin/
