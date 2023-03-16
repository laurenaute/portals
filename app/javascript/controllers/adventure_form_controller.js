import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="adventure-form"
export default class extends Controller {
  static targets = [ "input", "buttons", "new" ]


  connect() {
    console.log("connected");
  }

  submit(event) {
    // console.log("submitting");
    //find the value of the content class inside the event target
    // console.log(event.target);
    // console.log(event.target.innerHTML);

    this.inputTarget.value = event.target.innerText;

    // click on the submit button
    this.element.querySelector("input[type=submit]").click();

    // remove the inside off buttons target
    this.buttonsTarget.innerHTML = "";
  }
}
