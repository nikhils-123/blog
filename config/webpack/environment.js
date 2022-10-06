const { environment } = require('@rails/webpacker')

const environment = require('./environment')

const webpack = require("webpack")
environment.plugins.append("Provide", new webpack.ProvidePlugin({
	$: 'jquery'
	jQuery: 'jquery',
	Papper: ['popper.js', 'default']
}))

module.exports = environment
