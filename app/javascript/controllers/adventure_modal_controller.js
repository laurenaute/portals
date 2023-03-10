import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="adventure-modal"
export default class extends Controller {
  static targets = [ "adventureStart" ]

  connect() {
    // const modal = new bootstrap.Modal("#adventureStart")
    // console.log(('#adventureStart'))
    // modal.show();
    // remove the html with the id adventureStart
    // this.querySelector('#adventureStart').remove();
  }

  close() {
    this.adventureStartTarget.classList.remove('d-block');
    this.adventureStartTarget.classList.add('d-none');
  }
}
