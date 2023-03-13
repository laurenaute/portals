import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "sidebar",]

  connect() {
    // console.log(this.sidebarTarget)
  }

  slide() {
    document.querySelector('#blur').classList.toggle('blur')
    this.sidebarTarget.classList.toggle("non-visible")
  }
}
