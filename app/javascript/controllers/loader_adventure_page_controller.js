import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loader-adventure-page"
export default class extends Controller {
  static targets = [ "button", "loader" ]
  connect() {
    console.log("loadddddd");
    console.log(this.buttonTarget);
    console.log(this.loaderTarget);
  }
  loader() {
    console.log("click")
    this.loaderTarget.style.display = "block";
  }
}
