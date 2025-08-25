// Dark Mode Toggle
let lastScrollTop = 0;
const header = document.getElementById('mainHeader');
window.addEventListener('scroll', function() {
    let st = window.pageYOffset || document.documentElement.scrollTop;
    if (st > lastScrollTop && st > 60) {
        header.style.top = "-80px"; // hide
    } else {
        header.style.top = "0"; // show
    }
    lastScrollTop = st <= 0 ? 0 : st;
});
  document.addEventListener('DOMContentLoaded', function() {
            const btn = document.getElementById('darkmodeBtn');
            const body = document.body;
            function setDarkMode(on) {
                if (on) {
                    body.classList.add('darkmode');
                    if (btn) btn.textContent = '☀️ Light Mode';
                } else {
                    body.classList.remove('darkmode');
                    if (btn) btn.textContent = '🌙 Dark Mode';
                }
            }
            // Remember mode
            if (localStorage.getItem('darkmode') === 'on') setDarkMode(true);
            if (btn) {
                btn.addEventListener('click', () => {
                    const isDark = body.classList.toggle('darkmode');
                    setDarkMode(isDark);
                    localStorage.setItem('darkmode', isDark ? 'on' : 'off');
                });
            }
        });