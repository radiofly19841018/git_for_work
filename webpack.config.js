module.exports = {
	entry: "./scripts/entry.js",
	output: {
		path: __dirname,
		filename: "/build/bundle.js"
	},
	module:{
		loaders:[
		  {
		  	test: /\.css$/,
		  	loader: "style!css"
		  }
		]
	}
}