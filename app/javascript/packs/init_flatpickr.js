import flatpickr from "flatpickr"

const initFlatpickr = () => {

  const startDateInput = document.querySelector(".booking_start_date");
  const endDateInput = document.querySelector(".booking_end_date");

  // Check that the query selector id matches the one you put around your form.
  if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#book-booking-dates').dataset.unavailable)
  endDateInput.disabled = true

  flatpickr(startDateInput, {
    minDate: "today",
    disable: unavailableDates,
    dateFormat: "Y-m-d",
  });

  console.log(startDateInput)

  startDateInput.addEventListener("change", (e) => {
    if (startDateInput != "") {
      endDateInput.disabled = false
    }
    flatpickr(endDateInput, {
      minDate: e.target.value,
      disable: unavailableDates,
      dateFormat: "Y-m-d"
      });
    })
  };
}

export { initFlatpickr }


