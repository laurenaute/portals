import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="adventure-form"
export default class extends Controller {
  static targets = [ "form" ]

  connect() {
  }

  submit() {
    this.element.submit();
  }
}
