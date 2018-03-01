const webpack = require("webpack");

webpack(require("../webpack.config.js"), (err, stats) => {
  if (err) throw err;
});
