import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    'form'
  ]

  static values = {
    resetUrl: String
  }

  resetForm(e) {
    e.preventDefault();
    this.setActionToReset();
    this.formTarget.requestSubmit();
  }

  setActionToReset() {
    this.formTarget.action = this.resetUrlValue;
  }

  setLanguage(e) {
    const language = e.target.value;
    const url = new URL(window.location.href);
    url.searchParams.set('locale', language);
    window.location.href = url
  }
}
