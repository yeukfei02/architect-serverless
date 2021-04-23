// learn more about HTTP functions here: https://arc.codes/primitives/http

const arc = require("@architect/functions");
const { v4: uuidv4 } = require("uuid");
const moment = require("moment");

exports.handler = async function http(req) {
  let response = {};

  if (req.body) {
    const body = JSON.parse(req.body);
    const name = body.name;
    const price = body.price;
    console.log("name = ", name);
    console.log("price = ", price);

    const tableData = {
      id: uuidv4(),
      name: name,
      price: parseFloat(price),
      createdAt: moment().format("YYYY-MM-DD HH:mm:ss"),
      updatedAt: moment().format("YYYY-MM-DD HH:mm:ss"),
    };

    const data = await arc.tables();
    await data.cake.put(tableData);

    response = {
      statusCode: 201,
      headers: {
        "content-type": "application/json",
      },
      body: JSON.stringify({
        message: "createCake",
      }),
    };
  }

  return response;
};
