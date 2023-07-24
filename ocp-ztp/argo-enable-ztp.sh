oc patch argocd openshift-gitops -n openshift-gitops  --type=merge --patch-file ztp/argo-ztp-patch.json
oc patch multiclusterengines.multicluster.openshift.io multiclusterengine --type=merge --patch-file ztp/argo-disable-cluster-proxy-addon.json
oc apply -f ztp/argo-ztp-rbac.yml
