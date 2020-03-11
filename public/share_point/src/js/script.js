window.onload = () => {

    new WOW().init();

    let overlay = document.getElementsByClassName('overlay')[0];
    let header_button = document.getElementById('header_button');
    let navigation_button = document.getElementById('navigation_button');

    header_button.onclick = () => {
        overlay.style.display = 'block';
    };

    navigation_button.onclick = () => {
        overlay.style.display = 'none';
    }
};