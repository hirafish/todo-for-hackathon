// app/javascript/custom.js

function confirmNavigation(event) {
  if (!confirm("データは保存されませんが戻りますか？")) {
    event.preventDefault();
  }
}

// app/javascript/custom.js

function confirmDestroyNavigation(event) {
  if (!confirm("本当に削除しますか？")) {
    event.preventDefault();
  }
}
