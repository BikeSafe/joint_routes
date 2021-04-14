if [[ $1 == "POST" ]]
then
  printf "\nPOST products\n\n"

  curl -i -H "Content-Type:application/json" -X \
  POST http://localhost:3000/api/v1/routes -d \
  '{
    "calification" : 1,
    "latitude" : 1,
    "longitude" : 3
  }'

elif [[ $1 == "GET" ]]
then

  if [[ $2 ]]
  then
    printf "\nGET specific category\n\n"

    curl -i -H "Content-Type:application/json" -X \
    GET http://localhost:3000/routes/$2

    printf "\n\n"
  else
    printf "\nGET products\n\n"

    curl -i -H "Content-Type:application/json" -X \
    GET http://localhost:3000/routes/

    printf "\n\n"
  fi

elif [[ $1 == "PUT" ]]
then

  printf "\nPUT specific category\n\n"

  curl -i -H "Content-Type:application/json" -X \
  PUT http://localhost:3000/routes/$2 -d \
  '{
    "name": "Product EDITED",
    "description": "Description - Product EDITED",
    "category": 2,
    "unit_measurement": "Grams",
    "quantity": 34
  }'

  printf "\n\n"

elif [[ $1 == "DELETE" ]]
then

  printf "\nDELETE specific category\n\n"

  curl -X DELETE http://localhost:3000/routes/$2

  printf "\n\n"

else

  printf "\nOptions:\
  \nPOST\
  \nGET\
  \nGET id\
  \nPUT id\
  \nDELETE id"

fi