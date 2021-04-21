// learn more about HTTP functions here: https://arc.codes/primitives/http

exports.handler = async function http(req) {
  if (req.body) {
    const body = JSON.parse(req.body);
    const name = body.name;
    const price = body.price;
    console.log("name = ", name);
    console.log("price = ", price);
  }

  const response = {
    statusCode: 201,
    headers: {
      "content-type": "application/json",
    },
    body: JSON.stringify({
      message: "createCake",
    }),
  };
  return response;
};
