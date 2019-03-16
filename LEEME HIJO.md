
     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 

Pasos para hacer funcionar esto
_________________________________


1) Arramcamos el mysql con este comando: mysql-ctl start

2) Arrancamos el servidor de rails con este comando: rails s -b $IP -p $PORT

3) Para ver la app: http://trambolia-unixtall.c9users.io:8080/

4) Para crear el fichero de migracion: rails generate model manufacturers, y a continuacion rake db:migrate
Comprobamos que se ha generado bien con 'describe manufacturers'


