import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable";
import Typed from "typed.js"

// Connects to data-controller="adventure-subscription"
export default class extends Controller {
  static values = { adventureId: Number }
  static targets = [ "messages", "buttons", "loader", "new", "box" ]


  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "AdventureChannel", id: this.adventureIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    );

    console.log(`Connecting to Adventure #${this.adventureIdValue}`);
    this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
    
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
    if (data.search("message") != -1) {
      if (data.search("Gamemaster") != -1) {
        const options = {
          strings: [data],
          typeSpeed: 0,
          showCursor: false,
          onBegin: (self) => {
            this.newTarget.innerHTML = ">"
            this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
          },
          onComplete: (self) => {
            this.newTarget.innerHTML = ""
            this.messagesTarget.insertAdjacentHTML("beforeend", data)
            this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
          }
        }
        this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
        new Typed(this.newTarget, options)

      }
      else {
      this.messagesTarget.insertAdjacentHTML("beforeend", data)
      this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
      }
    }

    if (data.search("button") != -1) {
      this.buttonsTarget.insertAdjacentHTML("beforeend", data)
      this.loaderTarget.style.display = 'none'
    }
  }
}
