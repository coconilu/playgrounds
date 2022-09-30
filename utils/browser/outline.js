/**
 * 让浏览器的每一个div都高亮起来
 */
javascript: (function () {
  if (typeof hasOutline == "undefined") hasOutline = false;
  document.querySelectorAll("*").forEach((item) => {
    item.style.outline = hasOutline
      ? "none"
      : "1px solid #" + (~~(Math.random() * (1 << 24))).toString(16);
  });
  hasOutline = !hasOutline;
})();
