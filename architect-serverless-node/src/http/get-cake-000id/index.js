// learn more about HTTP functions here: https://arc.codes/primitives/http

exports.handler = async function http(req) {
  if (req.pathParameters) {
    const id = req.pathParameters.id;
    console.log("id = ", id);
  }

  const response = {
    statusCode: 200,
    headers: {
      "content-type": "application/json",
    },
    body: JSON.stringify({
      message: "getCakeById",
    }),
  };
  return response;
};
