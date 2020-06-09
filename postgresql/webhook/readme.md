https://github.com/hasura/skor

use outside tool to create postgresql  change webhooktrigger

./gen-triggers.py triggers.json | psql -h localhost -p 5432 -U postgres -d postgres --single-transaction --


 docker run \
    -e DBNAME="postgres" \
    -e PGUSER="postgres" \
    -e PGPASS="'a94196982a'" \
    -e PGHOST="localhost" \
    -e PGPORT=5433 \
    -e WEBHOOKURL="http://192.168.3.53:32481/" \
    --net host \
    -it hasura/skor:v0.1.1
~                                 
