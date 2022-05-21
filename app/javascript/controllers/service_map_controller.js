// The code below was taken from the Google Developer Docs
// It is used to plot the markers of each of the services listings on the embedded map, and control the initial view of the map

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="service-map"
export default class extends Controller {
  static targets = ["map", "services"]
  connect() {
    console.log("ServiceMapController connected")

    if(window.google) {
      this.initGoogle();
    }
  }

  initGoogle() {
    const myLatLng = { lat: -29, lng: 135 };
    const map = new google.maps.Map(this.mapTarget, {
      zoom: 4,
      center: myLatLng,
    });
    this.addMarkers(map);
  }

  addMarkers(map) {
    Array.from(this.servicesTarget.children).forEach((service) => {
      if(service.dataset.lat) {
        new google.maps.Marker({
          position: {
            lat: parseFloat(service.dataset.lat),
            lng: parseFloat(service.dataset.lng),
          },
          map,
          title: service.dataset.title,
        });
      }
    })
  }
}