function setHaederVisibility() {
	var topURL = top.location;
	if (top.location != document.location) {
		var padding_top = "0px";
		if ('paddingTopWithoutHeader' in window) {
			padding_top = paddingTopWithoutHeader;
		}
		if (padding_top != 'no change') {
			document.body.style.paddingTop= padding_top;
		}
		document.getElementById('smartheader').style.visibility = 'hidden';
	}
	else {
		if ('paddingTopWithHeader' in window) {
			document.body.style.paddingTop = paddingTopWithHeader;
		} else {
			document.body.style.paddingTop = "18px";
		}
		document.getElementById('smartheader').style.visibility = 'visible';
		window.scrollBy(0,-25); //for jumping to a specified anchor
	}
}

window.addEventListener("load", setHaederVisibility, true);
