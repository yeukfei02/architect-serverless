// learn more about HTTP functions here: https://arc.codes/primitives/http

const arc = require("@architect/functions");

exports.handler = async function http(req) {
  const data = await arc.tables();
  const cakeList = await data.cake.scan({});
  console.log("cakeList = ", cakeList);

  let cakes = [];
  let count = 0;
  if (cakeList) {
    cakes = cakeList.Items;
    count = cakeList.Count;
  }

  const response = {
    statusCode: 200,
    headers: {
      "content-type": "application/json",
    },
    body: JSON.stringify({
      message: "getCakes",
      cakes: cakes,
      count: count,
    }),
  };
  return response;
};
