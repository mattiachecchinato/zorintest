# Stage 1: Costruzione della documentazione
FROM python:3.9-alpine as builder


# Copia i sorgenti Mkdocs
COPY . /app
WORKDIR /app/doc-custom-app

# Installa le dipendenze
RUN pip install mkdocs


# Costruisci la documentazione
RUN mkdocs build

# Stage 2: Prepara l'immagine Nginx
FROM nginx:alpine

# Copia il sito compilato dalla prima stage
COPY --from=builder /app/doc-custom-app/site /usr/share/nginx/html

# Esponi la porta 80 per HTTP
EXPOSE 80
