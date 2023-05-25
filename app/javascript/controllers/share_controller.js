import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="share"
export default class extends Controller {
  static targets = ["result", "name"];
  connect() {
    console.log("Connected to the share controller");
    console.log(this.data.get("urlValue"));
    console.log(this.resultTarget);
  }
async share(e) {
    e.preventDefault();

    const shareData = {
        name: this.nameTarget.textContent,
        url: this.data.get("urlValue"),
    };
    try {
      await navigator.share(shareData);
      this.resultTarget.textContent = "Share Successfully"

    } catch (err) {
      this.resultTarget.textContent = `Error: ${err}`;
    }
  }
}

