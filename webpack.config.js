var path = require("path");

module.exports = {
  entry: {
    app: [
      "./index.js"
    ]
  },

  output: {
    path: path.resolve(__dirname + "/public"),
    filename: "[name].js"
  },

  module: {
    loaders: [
      {
        test: /\.(css|scss)$/,
        loaders: [
          "style-loader",
          "css-loader",
        ]
      },
      {
        test: /\.html$/,
        exclude: /node_modules/,
        loader: "file?name=[name].[ext]",
      },
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader: "elm-webpack-loader",
      },
      {
        test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'url-loader?limit=10000&mimetype=application/font-woff',
      },
      {
        test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'file-loader',
      },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        // include: path.join(__dirname, 'src')
      }
    ],

    noParse: /\.elm$/,
  },

  devServer: {
    inline: true,
    stats: { colors: true },
    historyApiFallback: true
  }
};