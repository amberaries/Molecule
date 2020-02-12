require("@rails/ujs").start()
require("@rails/activestorage").start()

// import vendor JS
import "bootstrap/dist/js/bootstrap";

// import CSS
import "stylesheets/application"

// import images
const importAll = r => r.keys().map(r)
importAll(require.context("../images", false, /\.(png|jpe?g|svg)$/))
