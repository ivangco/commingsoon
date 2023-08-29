# Utiliza una imagen base con un servidor web, en este caso nginx
FROM nginx:alpine


# Copia los archivos de tu página web al directorio raíz del servidor web en la imagen
COPY . /usr/share/nginx/html/ 

# Expone el puerto 80, que es el puerto por defecto de nginx
EXPOSE 80
EXPOSE 8080

# Copia el archivo de configuración personalizado
COPY default.conf /etc/nginx/conf.d/default.conf
# El comando que se ejecutará cuando el contenedor se inicie
CMD ["nginx", "-g", "daemon off;"]
