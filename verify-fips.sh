echo "data plane:"
kubectl exec -it deploy/istio-ingressgateway -n istio-system -- pilot-agent request GET server_info --log_as_json|jq {version}

echo "control plane"

POD=$(kubectl get po -n istio-system | grep istiod | awk '{print $1}')
rm -f /tmp/pilot-discovery
kubectl cp istio-system/$POD:/usr/local/bin/pilot-discovery /tmp/pilot-discovery && chmod +x /tmp/pilot-discovery

goversion -crypto /tmp/pilot-discovery