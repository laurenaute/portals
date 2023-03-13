import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="adventure-form"
export default class extends Controller {
  connect() {
  }

  submit() {
    this.element.submit();
  }
}
