# Loop continues until something like 'Connection to web-db port 5432 [tcp/postgresql] succeeded!' is returned

echo "Waiting for postgres..."

while ! nc -z web-db 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

exec "$@"