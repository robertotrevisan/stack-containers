
Criando TLS secrect RootCA

** Creating K8S secrets with the CA private keys (will be used by the cert-manager CA Issuer)

kubectl -n sistemax create secret tls my-ca-tls-secret --key=/home/robertotrevisan/.local/share/mkcert/rootCA-key.pem --cert=/home/robertotrevisan/.local/share/mkcert/rootCA.pem