import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="loading-page"
export default class extends Controller {
  static targets = [ "loader", "loaderText" ]

  connect() {
  }

  launchLoader() {
    this.loaderTarget.style.display = "initial";
    new Typed(this.loaderTextTarget, {
      strings: ["Chargement de la partie ..."],
      typeSpeed: 90,
      loop: true
    });
  };
}
