# Usa l'immagine LTS di Node.js su Alpine come base
FROM node:lts-alpine

# Copia il contenuto della cartella src nella directory /app del container
COPY src /app

# Imposta la directory di lavoro
WORKDIR /app

# Dichiarazione dell'argomento per la porta di esposizione
ARG PORT

# Esposizione della porta definita dall'argomento
EXPOSE 3000

# Comando di entrypoint per eseguire l'applicazione Node.js
CMD ["node", "main.js"]