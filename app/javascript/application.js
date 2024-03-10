// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'flowbite'

document.getElementById("copy-to-clipboard").addEventListener("click", function() {
    const copyableText = window.location.pathname;
    navigator.clipboard.writeText(copyableText).then(function() {
      console.log("Copied to clipboard!");
    }, function() {
      console.log("Failed to copy to clipboard.");
    });
  });
