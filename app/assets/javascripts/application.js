// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const counter = document.getElementById('counter');
const minus = document.querySelector('.remove-participant');
const incrementer = document.querySelector('.add-participant');
let count = Number.parseInt(counter.dataset.count, 10);
let quantities = document.querySelectorAll('.quantity');
const doses = document.querySelectorAll('.dose');
console.log(doses);
console.log(quantities[0])


const submitDisable = () => {
  if (count < 2) {
    minus.style.display = 'none';
  } else {
    minus.style.display = '';
  }
};


const changes = (key) => {
  count += Number.parseInt(key.dataset.offset, 10);
  counter.innerText = count;

  quantities.forEach(quantity => {
    let updateQuantity = Number.parseInt(quantity.dataset.dose, 10) * count;
    quantity.innerText = updateQuantity;
  });
  submitDisable();
};

submitDisable();

minus.addEventListener('click', (event) => {
  event.preventDefault();
  if (count > 1) {
    changes(minus);
  }
});

incrementer.addEventListener('click', (event) => {
  event.preventDefault();
  changes(incrementer);
});





// SEARCHBAR

