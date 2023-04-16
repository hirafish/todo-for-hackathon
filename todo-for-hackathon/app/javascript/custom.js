// app/javascript/custom.js

function confirmNavigation(event) {
  if (!confirm("データは保存されませんが戻りますか？")) {
    event.preventDefault();
  }
}

function confirmDestroyNavigation(event) {
  if (!confirm("本当に削除しますか？")) {
    event.preventDefault();
  }
}

document.addEventListener("DOMContentLoaded", function () {
  const deadlineInput = document.getElementById("deadline-input");
  const setDeadlineButton = document.getElementById("set-deadline");

  let deadline;

  function updateCountdown() {
    const now = new Date().getTime();
    const remainingTime = deadline - now;

    const days = Math.floor(remainingTime / (1000 * 60 * 60 * 24));
    const hours = Math.floor(
      (remainingTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
    );
    const minutes = Math.floor(
      (remainingTime % (1000 * 60 * 60)) / (1000 * 60)
    );
    const seconds = Math.floor((remainingTime % (1000 * 60)) / 1000);

    document.getElementById("days").textContent = days;
    document.getElementById("hours").textContent = hours;
    document.getElementById("minutes").textContent = minutes;
    document.getElementById("seconds").textContent = seconds;

    if (remainingTime <= 0) {
      clearInterval(interval);
      document.getElementById("days").textContent = "0";
      document.getElementById("hours").textContent = "0";
      document.getElementById("minutes").textContent = "0";
      document.getElementById("seconds").textContent = "0";
    }
  }

  let interval;

  setDeadlineButton.addEventListener("click", function () {
    deadline = new Date(deadlineInput.value).getTime();
    clearInterval(interval);
    updateCountdown();
    interval = setInterval(updateCountdown, 1000);
  });
});
