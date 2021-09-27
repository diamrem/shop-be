import { Client } from "pg";

const handleResponse = (products = {}, status = 200) => ({
  headers: {
    "Content-Type": "application/json",
    "Access-Control-Allow-Methods": "*",
    "Access-Control-Allow-Origin": "*",
  },
  statusCode: status,
  body: JSON.stringify(products),
});

const { PG_HOST, PG_PORT, PG_DATABASE, PG_USERNAME, PG_PASSWORD } = process.env;

const credentials = {
  user: PG_USERNAME,
  host: PG_HOST,
  database: PG_DATABASE,
  password: PG_PASSWORD,
  port: PG_PORT,
  ssl: {
    rejectUnauthorized: false,
  },
  connectionTimeoutMillis: 5000,
};

let data_export = {},
  error_code = 200;

export const handler = async (event) => {
  console.log(event);

  const { productId } = event.pathParameters || {};

  const client = new Client(credentials);

  client.on("error", (err) => {
    data_export = "DB Client Error 500:" + err.stack;
    error_code = 500;
    console.error("DB Client Error 500:", err.stack);
  });

  await client
    .connect()
    .then(() => console.log("Client connected"))
    .catch((err) => {
      data_export = "DB connection error:" + err.stack;
      error_code = 500;
    });

  await client
    .query(
      `SELECT product_model.*, stock_model.count \
                        FROM product_model LEFT JOIN stock_model \
                        ON product_model.id = stock_model.product_id\
                        WHERE product_model.id='${productId}'`
    )

    .then((res) => {
      data_export = res.rows;
    })
    .catch((err) => {
      data_export = "DB query error 500:" + err.stack;
      error_code = 500;
    });

  await client
    .end()
    .then(() => console.log("Client disconnected"))
    .catch((err) => {
      data_export = "DB disconnection error 500:" + err.stack;
      error_code = 500;
    });

  if (JSON.stringify(data_export) == JSON.stringify([])) {
    data_export = "Product not found 500: Wrong id";
    error_code = 400;
  }

  return await handleResponse(data_export, error_code);
};
