function pageScroll() {
    window.scrollBy(0,300); // horizontal and vertical scroll increments
    scrolldelay = setTimeout('pageScroll()',4000); // scrolls every 100 milliseconds
    sleep();
}

function jumpScroll() {
    window.scroll(0,150); // horizontal and vertical scroll targets
}
