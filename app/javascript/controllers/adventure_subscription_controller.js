import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable";

// Connects to data-controller="adventure-subscription"
export default class extends Controller {
  static values = { adventureId: Number }
  static targets = [ "messages" ]

  connect() {
    // Connect to the ActionCable channel
    this.channel = createConsumer().subscriptions.create(
      { channel: "AdventureChannel", id: this.adventureIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    );
    console.log(`Connecting to Adventure #${this.adventureIdValue}`);
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
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
