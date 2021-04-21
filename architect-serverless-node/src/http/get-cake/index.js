// learn more about HTTP functions here: https://arc.codes/primitives/http

exports.handler = async function http(req) {
  const response = {
    statusCode: 200,
    headers: {
      "content-type": "application/json",
    },
    body: JSON.stringify({
      message: "getCakes",
    }),
  };
  return response;
};
