const heart = () => {
  const heart = document.getElementById("heart-id");

  if (heart){
    heart.addEventListener('click', function() {

      heart.classList.toggle("far");
      heart.classList.toggle("fas");
    });
  }
};


export { heart }
