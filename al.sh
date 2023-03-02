#!/bin/bash

# Pide al usuario el nombre del alias
echo "Ingresa el nombre del alias:"
read alias_name

# Pide al usuario el comando correspondiente al alias
echo "Ingresa el comando correspondiente al alias:"
read alias_command

# Agrega el alias al archivo ~/.bashrc
echo "alias $alias_name='$alias_command'" >> ~/.bashrc

# Recarga el archivo ~/.bashrc
source ~/.bashrc

# Muestra un mensaje de confirmación
echo "El alias $alias_name se ha creado exitosamente."