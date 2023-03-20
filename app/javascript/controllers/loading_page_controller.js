import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="loading-page"
export default class extends Controller {
  static targets = [ "loader", "loaderText" ]

  connect() {
    console.log("Loading page controller connected");
  }

  launchLoader() {
    console.log("launchLoader start");
    this.loaderTarget.style.display = "initial";
    new Typed(this.loaderTextTarget, {
      strings: ["Chargement de la partie ...", "Veuillez patienter ...", "Nous générons votre aventure ..."],
      typeSpeed: 90,
      loop: true
    });
    console.log("launchLoader end");
  };
}
