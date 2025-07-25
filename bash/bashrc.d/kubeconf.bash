function calc_kubeconfig() {
  local CONF_D="$HOME/.kube/conf.d"
  export KUBECONFIG=""
  local file
  for file in $CONF_D/*.yaml; do
    export KUBECONFIG="$KUBECONFIG:$file"
  done
}
calc_kubeconfig
