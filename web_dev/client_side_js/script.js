

function makeBorder() {
	console.log("makeBorder event happened");
	var paragraph = document.getElementById('paragraph');
	paragraph.style.border = '1px solid red';
}

function makeRed() {
	console.log("makeRed event happened");
	var paragraph = document.getElementById('paragraph');
	paragraph.style.color = 'red';
}

function changeFont() {
	console.log("changeFont event happened");
	var paragraph = document.getElementById('paragraph');
	paragraph.style = 'font-family: Times New Roman';
}

var borderButton = document.getElementById("border");
borderButton.addEventListener("click", makeBorder);

var redButton = document.getElementById('red');
redButton.addEventListener('click', makeRed);

var fontButton = document.getElementById('font');
fontButton.addEventListener('click', changeFont);