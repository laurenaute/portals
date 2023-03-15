import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable";

// Connects to data-controller="adventure-subscription"
export default class extends Controller {
  static values = { adventureId: Number }
  static targets = [ "messages", "buttons", "loader" ]

  connect() {
    // Connect to the ActionCable channel
    this.channel = createConsumer().subscriptions.create(
      { channel: "AdventureChannel", id: this.adventureIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    );
  }

  disconnect() {
    console.log("Unsubscribed from the adventure channel")
    this.channel.unsubscribe()
  }

  resetForm(event) {
    event.target.reset()
  }


  // Private methods

  #insertMessageAndScrollDown(data) {
    // Detect if the data is a message or a button
    // if it is a message, insert it in the messages target
    // if it is a button, insert it in the buttons target
    // scroll down the messages target

    if (data.search("message") != -1) {
      this.messagesTarget.insertAdjacentHTML("beforeend", data)
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    }
    if (data.search("button") != -1) {
      this.buttonsTarget.insertAdjacentHTML("beforeend", data)
      this.loaderTarget.style.display = 'none'
    }





  }
}
