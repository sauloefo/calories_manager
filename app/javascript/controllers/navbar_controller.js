import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  setLanguage(e) {
    const language = e.target.value;
    const url = new URL(window.location.href);
    url.searchParams.set('locale', language);
    window.location.href = url
  }
}
