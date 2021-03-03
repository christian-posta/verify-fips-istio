kubectl label namespace default istio-injection=enabled --overwrite
kubectl apply -f /Users/ceposta/dev/istio/latest-1.8/samples/httpbin/httpbin.yaml