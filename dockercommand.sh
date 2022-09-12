docker run -it --name data-copier --rm --network data-copier-nw -v C:\Users\FL_LPT-320\Research\data\retail_db_json:/retail_db_json -e BASE_DIR=/retail_db_json -e DB_HOST=35f5ba1886cc -e DB_NAME=retail_db -e DB_PORT=5432 -e DB_USER=retail_user -e DB_PASS=itversity data-copier

docker run -it --name data-copier --rm \
  --network data-copier-nw \
  -v C:\Users\FL_LPT-320\Research\data\retail_db_json:/retail_db_json \
  -e BASE_DIR=/retail_db_json \
  -e DB_HOST=35f5ba1886cc \
  -e DB_NAME=retail_db \
  -e DB_PORT=5432 \
  -e DB_USER=retail_user \
  -e DB_PASS=itversity \
  data-copier python app.py