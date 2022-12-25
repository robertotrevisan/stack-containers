# stack-containers

Provisionamento de containers gerenciado pelo portainer + traefik usando TLS.

## Tecnlologias e requisitos:
- Docker - https://www.docker.com/
- Docker-compose - https://docs.docker.com/compose/
- Portainer - https://www.portainer.io/
- Traefik - https://github.com/traefik/traefik
- mkcert - ferramenta simples para criar certificados de desenvolvimento localmente confiáveis.  https://github.com/FiloSottile/mkcert

Basicamente criamos um deploy do traefik para gerenciar as coenxoes com um dominio local. (*.local.test)

![](./docs/images/traefik-architecture.webp)

Passos a seguir consideram já o Docker instalado no sistema.

###  gerando certificado local
Instalar o mkcert no sistema operacional utilizado:
Windows (utilizando winget): abra o prompt de comando do windows e digite:
```
winget install mkcert -s winget 
```

Instalando autoridade certificadora local
```
mkcert -install
```
Gerando certificado para os dominios (exemplo utilizado: local.test).
Gerar o o certifcado a partir da pasta `core`. Os certificados vao ser armazenados na pasta `certs`.

```
cd core
mkcert -cert-file certs/local-cert.pem -key-file certs/local-key.pem "local.test" "*.local.test"
```