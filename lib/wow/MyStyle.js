const dropdown = document.querySelectorAll('.drpdwn');

dropdowns.foreach(drpdwn =>{
    const slct = drpdwn.querySelector('.slct');
    const caret = drpdwn.querySelector('.caret');
    const menu = drpdwn.querySelector('.menu');
    const options = drpdwn.querySelector('.menu li');
    const selected = drpdwn.querySelector('.selected');

    
});

select.addEventListener('click',()=>{
    select.classList.toggle('slct-clicked');
    caret.classList.toggle('caret-rotate');
    menu.classList.toggle('menu-open');
});

options.forEach(option => {
    option.addEventListener('click', ()=> {
        selected.innerText = option.innerText;
        select.classList.remove('select-clicked');
        caret.classList.remove('caret-rotate');
        menu.classList.remove('menu-open');

        options.forEach(option => {
            option.classList.remove('active');
        });

        option.classList.add('active');
    });
});