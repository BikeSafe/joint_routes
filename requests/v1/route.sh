if [[ $1 == "POST" ]]
then
  printf "\nPOST products\n\n"

  curl -i -H "Content-Type:application/json" -X \
  POST http://localhost:3000/api/v1/routes -d \
  '{
    "calification" : 1,
    "latitude" : 1,
    "longitude" : 3,
    "creator" : {"name":"Tatis"},
    "members" : [
      {"name" : "Guiselle"},
      {"name" : "Hola"}
    ],
    "chat" : {
      "name" : "HOOLA",
      "message" : [
        {
          "content" : "test",
          "creator" : {"name" : "TAZT"}
        },
        {
          "content" : "test",
          "creator" : {"name" : "TAZT"}
        }
      ]
    }
  }'

elif [[ $1 == "GET" ]]
then

  if [[ $2 ]]
  then
    printf "\nGET specific category\n\n"

    curl -i -H "Content-Type:application/json" -X \
    GET http://localhost:3000/api/v1/routes/$2

    printf "\n\n"
  else
    printf "\nGET products\n\n"

    curl -i -H "Content-Type:application/json" -X \
    GET http://localhost:3000/api/v1/routes/

    printf "\n\n"
  fi

elif [[ $1 == "PUT" ]]
then

  printf "\nPUT specific category\n\n"

  curl -i -H "Content-Type:application/json" -X \
  PUT http://localhost:3000/api/v1/routes/$2 -d \
  '{
    "calification" : 1,
    "latitude" : 1,
    "longitude" : 3
  }'

  printf "\n\n"

elif [[ $1 == "DELETE" ]]
then

  printf "\nDELETE specific category\n\n"

  curl -X DELETE http://localhost:3000/api/v1/routes/$2

  printf "\n\n"

else

  printf "\nOptions:\
  \nPOST\
  \nGET\
  \nGET id\
  \nPUT id\
  \nDELETE id\n\n"

fi