FROM nginx:alpine

# Remove configuração padrão
RUN rm -rf /usr/share/nginx/html/*

# Copia arquivos do site
COPY index.html /usr/share/nginx/html/
COPY servicos/ /usr/share/nginx/html/servicos/
COPY produtos/ /usr/share/nginx/html/produtos/
COPY imagens/ /usr/share/nginx/html/imagens/
COPY 9dfc0035191c30602cd5ae9cad1e5a0f.html /usr/share/nginx/html/

# Copia configuração do nginx
COPY docker/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
