# Use a imagem base do Keycloak
FROM quay.io/keycloak/keycloak:22.0.2

# Instale o unzip (baseada em RHEL, usando dnf)
USER root
RUN apk add --no-cache unzip
# Volte ao usuário não-root
USER keycloak

# Defina o comando padrão para o Keycloak com as opções extras
ENTRYPOINT ["kc.sh", "start-dev", "--spi-theme-static-max-age=-1", "--spi-theme-cache-themes=false", "--spi-theme-cache-templates=false"]