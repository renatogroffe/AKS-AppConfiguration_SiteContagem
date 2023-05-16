# Documentação - Use Azure App Configuration in Azure Kubernetes Service (preview)
# https://learn.microsoft.com/en-us/azure/azure-app-configuration/quickstart-azure-kubernetes-service

az aks get-credentials --resource-group TesteKubernetes --name AKSCluster --overwrite-existing

kubectl create namespace azappconfig-system

helm install azureappconfiguration.kubernetesprovider oci://mcr.microsoft.com/azure-app-configuration/helmchart/kubernetes-provider --version 1.0.0-preview --namespace azappconfig-system

kubectl get all -n azappconfig-system