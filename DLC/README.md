# CCU - Deeplabcut docker images


Here are two versions of the docker containers for installing DeepLabCut. The version 3.xx is the recommended one as it is faster, more stable, and the implementation given here also has graphical support. Below is a guide on how to simply download the docker image and use it in our GPU cluster.


## Running directly from our hosted DLC Image


At the beginning it is useful to run the containers as a `pod`, the instructions below are for that testcase. At some point you should change your submission file to run your analyzes as jobs instead, and in doing so create your own Execution script that will start your analyzes automatically.


If you already have access to our GPU cluster, simply download the file `DLC_30_Public.yaml`, and edit to include your account details and/or GPU that you are targeting, later simply run:


1 - `kubectl apply -f DLC_30_Public.yaml` to submit your pod

2 - `kubectl get pods` to check if your pod is being launched properly

3 - `kubectl describe pods ccu-deeplabcut` to describe the launching off your pod, also match the name of the pod here with the one in the yaml file if you have changed it.

4 - `kubectl exec -it ccu-deeplabcut -- /bin/bash` to log into into your pod

4b - `bash Execute.sh` once inside the pod, run the initialization script, and confirm that the GPU is recognized properly.

5 - In a different terminal on your local computer run `kubectl port-forward ccu-deeplabcut 10000:10000` and the proceed to open a browser and look at url `localhost:10000`