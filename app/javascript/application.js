// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.initMap = () => {
    const event = new Event("MapLoaded")
    event.initEvent("map-loaded", true, true);
    window.dispatchEvent(event)
}
