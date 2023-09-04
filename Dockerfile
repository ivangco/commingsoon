# Utiliza una imagen base con un servidor web, en este caso nginx
FROM nginx:alpine


# Copia los archivos de tu página web al directorio raíz del servidor web en la imagen
COPY . /usr/share/nginx/html/ 

# Copia tus archivos de certificado y clave al contenedor
COPY localhost.crt /etc/nginx/ssl/
COPY localhost.key /etc/nginx/ssl/
COPY hello.staysocial.lat.crt /etc/nginx/ssl/
COPY hello.staysocial.lat.key /etc/nginx/ssl/

# Expone el puerto 80, que es el puerto por defecto de nginx
# EXPOSE 443
EXPOSE 80

# Copia el archivo de configuración personalizado
COPY default.conf /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf
# El comando que se ejecutará cuando el contenedor se inicie
CMD ["nginx", "-g", "daemon off;"]
