let btn = document.querySelector("input[type=submit]");

btn.addEventListener("click", active);

function active() {
  alert(1);
  btn.classList.toggle("is_active");
}