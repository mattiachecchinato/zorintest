
FROM nginx:alpine 
FROM python:3.9-slim


COPY site /usr/share/nginx/html

RUN pip install mkdocs

RUN mkdocs build

EXPOSE 80
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]