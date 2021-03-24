# jonhines/kubectl-octant-docker

Docker container to ease access to view an Octant dashboard for a running an AWS EKS kubernetes dashboard.  

# How to use
The container requires you to provide a volume mount that points towards:
* Your local .aws credentials -> for interacting with the cluster from within the Octant UI
* Your local .kube/config -> instructing Octant which cluster to use

Example docker run passing in kubeconfig and aws credentials, and setting up port-forwarding for local access to dashboard UI from your browser:

`docker run -it -p 7777:7777 -v $HOME/.kube/config:/root/.kube/config:ro -v $HOME/.aws/credentials:/root/.aws/credentials:ro jonhines/kubectl-octant-docker:latest`

## Dependencies
Relies on jshimko/kube-tools-aws base image to simplify access to kubectl and aws CLI libs.
