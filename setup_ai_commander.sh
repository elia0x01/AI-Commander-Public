#!/bin/bash

# Verifica se git è installato
if ! command -v git &> /dev/null
then
    echo "Git non è installato. Installalo prima di eseguire lo script."
    exit 1
fi

# Clona il repository pubblico AI Commander
echo "Clonazione del repository AI Commander..."
git clone https://github.com/tuo-username/AI-Commander-Public.git

# Controlla se il clone è riuscito
if [ ! -d "AI-Commander-Public" ]; then
    echo "Errore nella clonazione del repository. Controlla l'URL."
    exit 1
fi

echo "Repository clonato con successo!"

# Sposta i file nella directory corrente
echo "Copiatura dei file nella cartella locale..."
cp -r AI-Commander-Public/* ./

# Rimuove la cartella clonata
rm -rf AI-Commander-Public

echo "File copiati con successo!"

# Mostra i file copiati
echo "Ecco i file copiati:"
ls -l

echo "Pronto per il commit e il push su GitHub."
echo "Esegui i seguenti comandi:"
echo "git add ."
echo "git commit -m 'Aggiunta dei file AI Commander'"
echo "git push origin main"
