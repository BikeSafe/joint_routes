if [[ $1 == "POST" ]]
then
  printf "\nPOST routes\n\n"

  curl -i -H "Content-Type:application/json" -X \
  POST http://localhost:3000/api/v2/routes -d \
  '{
    "name": "Ruta lo que sea",
    "rating" : 0,
    "private" : true,
    "origin" : {
      "latitude" : 1,
      "longitude" : 3.5
    },
    "destination" : {
      "latitude" : 2,
      "longitude" : 6.5
    },
    "creator" : {"name":"Juan", "id2": 1},
    "members" : [
      {"name" : "Pepito", "id2": 2},
      {"name" : "Pepito", "id2": 2}
    ]
  }'

elif [[ $1 == "GET" ]]
then

  if [[ $2 ]]
  then
    printf "\nGET specific route\n\n"

    curl -i -H "Content-Type:application/json" -X \
    GET http://localhost:3000/api/v1/routes/$2

    printf "\n\n"
  else
    printf "\nGET routes\n\n"

    curl -i -H "Content-Type:application/json" -X \
    GET http://localhost:3000/api/v1/routes/

    printf "\n\n"
  fi

elif [[ $1 == "PUT" ]]
then

  printf "\nPUT specific route\n\n"

  curl -i -H "Content-Type:application/json" -X \
  PUT http://localhost:3000/api/v1/routes/$2 -d \
  '{
    "calification" : 4,
    "latitude" : 5,
    "longitude" : 6,
    "creator" : {"name":"Juan", "id2": 1},
    "members" : [
      {"name" : "Pepito", "id2": 2},
      {"name" : "Juan", "id2": 1}
    ],
    "chat" : {
      "name" : "Chat Editado",
      "message" : [
        {
          "content" : "Lo odio",
          "creator" : {"name" : "Pepito", "id2": 2}
        },
        {
          "content" : "test",
          "creator" : {"Yo más" : "Juan", "id2": 1}
        }
      ]
    }
  }'
  printf "\n\n"

elif [[ $1 == "DELETE" ]]
then

  printf "\nDELETE specific route\n\n"

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