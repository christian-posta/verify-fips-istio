kind create cluster --name fips-istio
#istioctl1.7 install -y -f ./istio-operator.yaml
istioctl1.8 install -y -f ./istio-operator-1.8.yaml
