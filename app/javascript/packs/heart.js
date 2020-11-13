const heart = () => {
  const heart = document.getElementById("heart-id")


  heart.addEventListener('click', (event) => {
    heart.classList.toggle("far");
    heart.classList.toggle("fas");
  })
}

export { heart }
