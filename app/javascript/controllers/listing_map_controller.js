import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="listing-map"
export default class extends Controller {
  static targets = ["mapTarget"]
  connect() {
    console.log("ListingMapController connected")
  
    if(window.google) {
      this.initGoogle();
    }
  }

  initGoogle() {
    const myLatLng = { lat: -25, lng: 130}
    const map = new google.maps.Map(this.mapTarget, {
      zoom: 7,
      center: myLatLng,
    });

  new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: "Hello World!",
  });
  }

}
