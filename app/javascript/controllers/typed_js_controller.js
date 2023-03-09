import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Live your adventure", "A unique adventure"],
      typeSpeed: 90,
      loop: true
    })
  }
}
