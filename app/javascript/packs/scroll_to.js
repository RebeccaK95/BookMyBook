


const button = document.querySelector('.button-show')
const form = document.querySelector('#form-rent')

const scrollTo = () => {
  button.addEventListener('click', (event) => {
    form.scrollIntoView();
  })
}

export { scrollTo }
