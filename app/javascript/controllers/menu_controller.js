import {Controller} from '@hotwired/stimulus'

//CONNECTS TO NAVBAR CONTROLLER
export default class extends Controller {
    static targets = [ "mobileMenu", "desktopMenu" ]
    connect() {
      console.log("menu controller connected");
    }
  
    toggleDesktopMenu() {
      this.desktopMenuTarget.classList.toggle("hidden");
    }
  
    toggleMobileMenu() {
      this.modileMenuTarget.classList.toggle("hidden");
    }
  }
  
  