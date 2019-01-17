let imgs = document.querySelectorAll(".img-crop");
imgs.forEach((img)=>{
  img.addEventListener("click",grow);
});

function grow(event){
  event.target.classList.toggle("grow");
  
};