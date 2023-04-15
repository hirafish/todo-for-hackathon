// app/javascript/custom.js

function confirmNavigation(event) {
  if (!confirm("データは保存されませんが戻りますか？")) {
    event.preventDefault();
  }
}
