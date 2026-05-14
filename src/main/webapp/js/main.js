// Initialize AOS animations immediately (scripts are at bottom of body, AOS is already loaded)
if (typeof AOS !== 'undefined') {
    AOS.init({ duration: 700, once: true, offset: 60, easing: 'ease-out' });
}

// Navbar scroll effect
window.addEventListener('scroll', function() {
    var nav = document.getElementById('mainNav');
    if (nav) nav.classList.toggle('scrolled', window.scrollY > 50);
});

// Scroll to Top Button
var scrollTop = document.getElementById('scrollTop');
if (scrollTop) {
    window.addEventListener('scroll', function() {
        scrollTop.classList.toggle('visible', window.scrollY > 400);
    });
}

// Bootstrap Form Validation
(function () {
    'use strict';
    var forms = document.querySelectorAll('.needs-validation');
    Array.prototype.slice.call(forms).forEach(function (form) {
        form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        }, false);
    });
})();

// Counter Animation
function animateCounter(counter) {
    var target = parseInt(counter.getAttribute('data-count'), 10);
    var duration = 2000;
    var step = target / (duration / 10);
    var current = 0;

    var timer = setInterval(function() {
        current += step;
        if (current >= target) {
            counter.textContent = target + (counter.parentElement.querySelector('.counter-label').textContent.indexOf('+') !== -1 ? '+' : '');
            clearInterval(timer);
        } else {
            counter.textContent = Math.floor(current);
        }
    }, 10);
}

// Intersection Observer for counters
var counters = document.querySelectorAll('.counter-num');
if (counters.length > 0) {
    var observer = new IntersectionObserver(function (entries) {
        entries.forEach(function (entry) {
            if (entry.isIntersecting && !entry.target.classList.contains('counted')) {
                entry.target.classList.add('counted');
                animateCounter(entry.target);
            }
        });
    }, { threshold: 0.5 });

    counters.forEach(function (counter) {
        observer.observe(counter);
    });
}

// Smooth Scroll for anchor links
document.querySelectorAll('a[href^="#"]').forEach(function (anchor) {
    anchor.addEventListener('click', function (e) {
        var target = document.querySelector(this.getAttribute('href'));
        if (target) {
            e.preventDefault();
            var offset = 80;
            var topPos = target.getBoundingClientRect().top + window.pageYOffset - offset;
            window.scrollTo({ top: topPos, behavior: 'smooth' });
        }
    });
});

// Auto-select course from URL param (register.jsp)
(function () {
    var urlParams = new URLSearchParams(window.location.search);
    var course = urlParams.get('course');
    if (course) {
        var select = document.getElementById('courseSelect');
        if (select) {
            Array.from(select.options).forEach(function (option) {
                if (option.value === course) {
                    option.selected = true;
                }
            });
        }
    }
})();

// Course tab bar active highlight on scroll
var tabPills = document.querySelectorAll('.tab-pill');
if (tabPills.length > 0) {
    window.addEventListener('scroll', function () {
        var sections = ['feite', 'eet', 'pedman'];
        sections.forEach(function (id) {
            var sec = document.getElementById(id);
            if (sec) {
                var rect = sec.getBoundingClientRect();
                if (rect.top <= 44 && rect.bottom >= 100) {
                    tabPills.forEach(function (p) { p.classList.remove('active'); });
                    var pill = document.querySelector('a.tab-pill[href*="' + id + '"]');
                    if (pill) pill.classList.add('active');
                }
            }
        });
    });
}