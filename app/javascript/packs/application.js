import Rails from "@rails/ujs".start()
import Turbolinks from "turbolinks".start()
import * as ActiveStorage from "@rails/activestorage".start()
import "channels"

import "bootstrap"
import "../stylesheets/application"
document.addEventListener("turbolinks:load", () => {
	$('[data-toggle="tooltip"]').tooltip()
	$('[data-toggle="tooltip"]').popover()

})