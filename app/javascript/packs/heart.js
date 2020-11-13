const heart = () => {
  const heart = document.getElementById("heart-id")


  heart.addEventListener('click', (event) => {
    heart.classList.remove("far");
    heart.classList.add("fas");
    console.log(heart)
  })
}

export { heart }
