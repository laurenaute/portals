import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="loader-adventure-page"
export default class extends Controller {
  static targets = [ "button", "loader", "text", "choiceButton" ]
  connect() {
    // console.log(this.buttonTarget);
    // console.log(this.loaderTarget);
  }
  loader() {
    // console.log("click")
    this.loaderTarget.style.display = "block";
    this.loaderTarget.style.opacity = "1";
    this.textTarget.style.display = "initial";
    this.textTarget.style.opacity = "1";
    this.choiceButtonTarget.style.display = "none";
  }
}
