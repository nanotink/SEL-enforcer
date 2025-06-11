function mode() {
    var modeBtn = document.getElementById("dark") || document.getElementById("light");
    if (modeBtn && modeBtn.id == "dark") {
        document.getElementById("bg").style.backgroundColor = "#000000";
        document.getElementById("title").style.color = "#ffffff";
        document.getElementById("theme").src = "assets/light.png";
        modeBtn.style.backgroundColor = "#ffffff";
        modeBtn.id = "light";
    } else if (modeBtn && modeBtn.id == "light") {
        document.getElementById("bg").style.backgroundColor = "#ffffff";
        document.getElementById("title").style.color = "#000000";
        modeBtn.style.backgroundColor = "#000000";
        document.getElementById("theme").src = "assets/dark.png";
        modeBtn.id = "dark";
    }
}
function ostype() {
    var userAgent = navigator.userAgent.toLowerCase();
    if (userAgent.indexOf("linux") !== -1) {
        null;
    } else {
        alert("Only for Android(Linux) devices!");
    }
}
function data() {
    var value = prompt("Enter the new value");
    if (value) {
        var data = document.getElementsByName("label")[0];
        if (data) {
            data.innerHTML = "Data: " + value;
            data.style.display = "block";
        } else {
            alert("Element with name 'label' not found!");
        }
    } else {
        alert("No value entered!");
    }
}
function remove() {
    var label = document.querySelector("label");
    if (label) {
        label = label.innerHTML;
    } else {
        label = "the blockquote";
    }
    var blockquote = document.querySelector("blockquote");
    if (blockquote) {
        alert("Are you sure you want to delete " + label + "?");
        blockquote.parentNode.removeChild(blockquote);
    } else {
        alert("Blockquote element not found!");
    }
}