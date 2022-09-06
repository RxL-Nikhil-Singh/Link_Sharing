// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-3.3.1.min
//= require bootstrap
//= require popper.min
//= require_self



// $("#logo2").mouseover(
//     function(){
//         $("body").css("background-image","https://i.pinimg.com/originals/82/2a/fc/822afc5b6d4864bc0fa943e795e539fa.gif");
//         $("nav").css("background-image","url('images/meteor2.gif')");
//         $("th").css("background-image", "url('images/meteor2.gif')");
//     }
// );
//
// $("#logo2").mouseleave(
//     function(){
//         $("body").css("background-image","url('images/slateBG2.jpg' )");
//         $("nav").css("background-image","url('images/meteor1.gif')")
//         $("th").css("background-image", "url('images/meteor1.gif')");
//     }
// );





setTimeout( function myFunction() {

    $("#flash").html("");
},5000)


function myFunction2(){
    $("#flash").html("");
}


// $("#createTopic").modal("show")
document.getElementById("registerPanel").style.display="none"


function loginFunction(){
    document.getElementById("registerPanel").style.display="none";
    document.getElementById("loginPanel").style.display="inline-block";
}

function registerFunction(){
    document.getElementById("registerPanel").style.display="inline-block";
    document.getElementById("loginPanel").style.display="none";
}








// const myModal = document.getElementById('myModal')
// const myInput = document.getElementById('myInput')

// myModal.addEventListener('shown.bs.modal', () => {
//   myInput.focus()
// })
