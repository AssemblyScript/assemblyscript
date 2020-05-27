const webpack = require("webpack");
const config = require("../webpack.config.js");

webpack(config, err => {
  if (err) throw err;
});
