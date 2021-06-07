console.log("js");

function funcOnClick_1() {
    // console.log(document.getElementById('id-1').className);
    var myList = document.getElementsByClassName('div-1');
    var obj = myList.item(0);
    // obj.className += " "+"div-add";
    obj.classList.add('div-add');
    console.log(obj);
}

function funcOnClick_2() {
    // console.log(document.getElementById('id-1').className);
    var myList = document.getElementsByClassName('div-1');
    var obj = myList.item(0);
    // obj.className = obj.className.replace('div-add','');
    obj.classList.remove('div-add');
    console.log(obj);
}