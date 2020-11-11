const scrollTo = () => {
  const button = document.querySelector('.button-show')
  const form = document.querySelector('#form-rent')
  if (button) {
    button.addEventListener('click', (event) => {
      form.scrollIntoView();
      console.log(button);
      console.log('scroll!');
    })
  }
}
export { scrollTo }
