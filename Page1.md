# Creating the new POD from the running POD
The use case is to create new POD from the running POD. The running POD is waiting for topic(Message Broker) which should able to create new POD based on the Topic Type.

If the Topic is "Topic1", then it should invoke the POD1 and If the "Topic2" then create POD2. Based on the run time condition, running POD should able to spawn new PODs. 

 #### 1. Following Steps will help to acheive the required functionality
 1) Mount the service account token to the running POD.
 2) Get the cluster access from the Token by using the Kubctl APIs.
 3) Create the POD by using the yaml files as data

Link for Token: https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-bound-service-account-tokens
