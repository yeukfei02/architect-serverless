@app
architect-serverless-node

@http
get /
post /cake
get /cake
get /cake/:id

@aws
profile yeukfei02
region ap-southeast-1

@tables
cake
  id *String
  name String
  price Number
  createdAt String
  updatedAt String
