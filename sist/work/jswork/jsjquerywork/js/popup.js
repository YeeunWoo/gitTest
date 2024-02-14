function pop1() {
    window.open('../image/01.png','event','width=500,height=500');
}

function pop2() {
    newpopup = window.open('../image/01.png', '', 'width=100,height=300');
    setTimeout('newpopup.close()', 2000);
}