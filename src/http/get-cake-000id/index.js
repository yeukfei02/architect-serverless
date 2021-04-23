// learn more about HTTP functions here: https://arc.codes/primitives/http

const arc = require("@architect/functions");

exports.handler = async function http(req) {
  let response = {};

  if (req.pathParameters) {
    const id = req.pathParameters.id;
    console.log("id = ", id);

    const data = await arc.tables();
    const cake = await data.cake.get({ id: id });
    console.log("cake = ", cake);

    response = {
      statusCode: 200,
      headers: {
        "content-type": "application/json",
      },
      body: JSON.stringify({
        message: "getCakeById",
        cake: cake || {},
      }),
    };
  }

  return response;
};
