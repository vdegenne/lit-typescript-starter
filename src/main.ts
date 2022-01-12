import { LitElement, html, css } from 'lit'
import { customElement } from 'lit/decorators.js'

declare global {
  interface Window {
    app: AppContainer;
  }
}

@customElement('app-container')
export class AppContainer extends LitElement {

  static styles = css``

  render () {
    return html`
    Hello There ! The app content goes here.
    `
  }
}