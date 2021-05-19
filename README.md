## GCP
gcloud container clusters get-credentials <cluster_name>


# Some Useful Commands

Follow the report for more details.

## Docker
docker build -t <image_name> .

Make sure to upload to a docker registry and set secrets for kubernetes to pull from the registry.
Also change image name in .yaml file.

OR

you can use the image already created by me.

docker pull mayukhghosh/cml:train_katibv1

## Kubeflow
Make sure to deploy kubeflow on your kubernetes cluster. The instructions are in the report.

## Kubernetes
kubectl create -f mnist_train.yaml

kubectl get pytorchjobs
kubectl -n kubeflow describe pytorchjobs  <job_name> 
kubectl logs pods/mnist-train-kbf-worker-0 -n kubeflow

kubectl -n kubeflow delete pytorchjobs <job_name>

kubectl config set-context --current --namespace= <insert-namespace-name-here>

## Katib

Copy and paste the contents of the .yaml or .yml file into the central dashboard interface under "Experiments(AutoML)" and "YAML File". There are 2 example files given.