function post (){
  const stars = document.querySelector(".ratings").children;
const ratingValue = document.getElementById("rating-value");

let index;

for(let i=0;i<stars.length; i++){
  stars[i].addEventListner("mouseover",function(){
    for(let j=0; j<stars.lemgth; j++){
    stars[j].classList.remove("fa-star");
    stars[j].classList.add("fa-star-o");
  }
  
    for(let j=0; j<=i; j++){
    stars[j].classList.remove("fa-star-o");
    stars[j].classList.add("fa-star");
  }
  })
}
}

window.addEventListener('load', post);

