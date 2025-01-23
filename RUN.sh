#/bin/bash
# Curitiba 23 de Janeiro de 2025
# Editor Jeverson Dias da Silva .........Youtube/@JCGAMESCLASSICOS
# Arquivos e configuração para extrair arquixos com a extenção.7z no Batocera.Linux v40



mkdir -p "/userdata/system/.dev/apps"
cd "/userdata/system/.dev/apps"
diretorio_trabalho="$(pwd)"
curl -v -L -o /userdata/system/.dev/apps/7z.1.0 https://github.com/JeversonDiasSilva/7Z/releases/download/v1.0/7z.1.0
unsquashfs -d p7zip 7z.1.0
rm 7z.1.0
ln -s "$diretorio_trabalho/p7zip/extra/"* /usr/lib
ln -s "$diretorio_trabalho/p7zip" /usr/lib/p7zip
rm /usr/bin/7z
ln -s "$(pwd)"/p7zip/7z.sh /usr/bin/7z

batocera-save-overlay