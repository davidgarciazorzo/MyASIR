!/bin/bash

read -p "Introduce aqui la ruta de la carpeta donde se encuentren los .txz: " carpeta
if [ -d "$carpeta" ]; then
for archivo in "$carpeta"/*.txz
do
echo "Descomprimiendo $archivo ..."
tar Jxvf "$archivo" -C /mnt/rootfs
chmod +x /mnt/rottfs/install/doinst.sh
cd /mnt/rootfs
./intall/doinst.sh

cd -

done
else
echo "La carpeta $carpeta no existe."
fi
