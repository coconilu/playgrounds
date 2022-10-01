// 页面更新DOM并不会立即更新页面视图，而是在下一个宏队列执行前更新
function main() {
  const target = document.getElementById("target");
  if (target) {
    target.style.background = "black";
    Promise.resolve().then(() => {
      alert("11");
    });
    setTimeout(() => {
      alert("22");
    });
  }
}

main();
