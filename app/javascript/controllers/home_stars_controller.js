import { Controller } from "@hotwired/stimulus"
// import { ParticlesConfig } from './particles-config';
import { particleJS } from "particles.js"

// Connects to data-controller="home-stars"
export default class extends Controller {
  connect() {
    // console.log(document.querySelector('#home-stars-background'));
    // console.log("hello", this.element);
    document.querySelector('#home-stars-background')


    particlesJS("particles-js", {
      "particles": {
        "number": {
          "value": 1000,
          "density": {
            "enable": true,
            "value_area": 799.1476416322727
          }
        },
        "color": {
          "value": "#C7F9FF",
        },
        "shape": {
          "type": "circle",
          "stroke": {
            "width": 0,
            "color": "#FCFFFF"
          },
          "polygon": {
            "nb_sides": 5
          },
          "image": {
            "src": "img/github.svg",
            "width": 100,
            "height": 100
          }
        },
        "opacity": {
          "value": 0.87927153781200905,
          "random": false,
          "anim": {
            "enable": true,
            "speed": 0.2,
            "opacity_min": 0.4,
            "sync": false
          }
        },
        "size": {
          "value": 2.65,
          "random": true,
          "anim": {
            "enable": true,
            "speed": 1,
            "size_min": 0,
            "sync": false
          }
        },
        "line_linked": {
          "enable": false,
          "distance": 150,
          "color": "#ffffff",
          "opacity": 0.4,
          "width": 1
        },
        "move": {
          "enable": true,
          "speed": 0.1,
          "direction": "none",
          "random": true,
          "straight": false,
          "out_mode": "out",
          "bounce": false,
          "attract": {
            "enable": false,
            "rotateX": 300,
            "rotateY": 300
          }
        }
      },
      "interactivity": {
        "detect_on": "canvas",
        "events": {
          "onhover": {
            "enable": false,
            "mode": "bubble"
          },
          "onclick": {
            "enable": false,
            "mode": "push"
          },
          "resize": false
        },
        "modes": {
          "grab": {
            "distance": 400,
            "line_linked": {
              "opacity": 1
            }
          },
          "bubble": {
            "distance": 83.91608391608392,
            "size": 3.5,
            "duration": 4,
            "opacity": 1,
            "speed": 3
          },
          "repulse": {
            "distance": 200,
            "duration": 0.4
          },
          "push": {
            "particles_nb": 6
          },
          "remove": {
            "particles_nb": 4
          }
        }
      },
      "retina_detect": true
    });

  }
}
