import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable";
import Typed from "typed.js"

// Connects to data-controller="adventure-subscription"
export default class extends Controller {
  static values = { adventureId: Number }
  static targets = [ "messages", "buttons", "loader", "new", "box", "choiceButton", "message", "inputForm" ]


  connect() {
    const data = this.messageTargets[0].innerHTML
    if (this.messageTargets.length == 1) {
      this.messageTargets[0].innerHTML = ""
    }

    this.channel = createConsumer().subscriptions.create(
      { channel: "AdventureChannel", id: this.adventureIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    );

    console.log(`Connecting to Adventure #${this.adventureIdValue}`);
    this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)

    const targetNode = this.newTarget;

    // Options for the observer (which mutations to observe)
    const config = { attributes: true, childList: true, subtree: true };

    // Callback function to execute when mutations are observed
    const callback = (mutationList, observer) => {
      for (const mutation of mutationList) {
        if (mutation.type === "childList") {
          this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
        }
      }
    };
    // Create an observer instance linked to the callback function
    const observer = new MutationObserver(callback);

    // Start observing the target node for configured mutations
    observer.observe(targetNode, config);

    if (this.messageTargets.length == 1) {
      const options = {
        strings: [data],
        typeSpeed: 0,
        showCursor: false,
        // When typed js begins
        onStart: (self) => {
          this.choiceButtonTarget.style.display = 'none'
          this.buttonsTarget.style.display = 'none'
          this.inputFormTarget.style.display = 'none'
        },
        onComplete: (self) => {
          this.newTarget.innerHTML = ""
          this.messagesTarget.insertAdjacentHTML("beforeend", data)
          this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
          this.choiceButtonTarget.style.display = 'initial'
          this.buttonsTarget.style.display = 'initial'
          this.inputFormTarget.style.display = 'initial'
        }
      }
      new Typed(this.newTarget, options)
    }

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
          onComplete: (self) => {
            this.newTarget.innerHTML = ""
            this.messagesTarget.insertAdjacentHTML("beforeend", data)
            this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
            this.choiceButtonTarget.style.display= 'initial'
            this.buttonsTarget.style.display = 'initial'
            this.inputFormTarget.style.display = 'initial'
          }
        }
        this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
        new Typed(this.newTarget, options)

      }
      else {
      this.messagesTarget.insertAdjacentHTML("beforeend", data)
      this.choiceButtonTarget.style.display = "none"
      this.inputFormTarget.style.display = 'none'
      this.buttonsTarget.innerHTML = ""
      this.boxTarget.scrollTo(0, this.boxTarget.scrollHeight)
      }
    }

    if (data.search("button") != -1) {
      this.buttonsTarget.insertAdjacentHTML("beforeend", data)
      this.loaderTarget.style.display = 'none'
      this.buttonsTarget.style.display = 'none'
      this.inputFormTarget.style.display = 'none'
    }
  }
}
