//vérification du mail:
var email = document.querySelector("#email");
var regexMail = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,6})+$/;

email.addEventListener("keyup", function () {
    if (!regexMail.test(email.value) ){
        email.focus();
        document.querySelector("#errorEmail").innerHTML = '<p style="color:red">Merci de saisir une adresse mail correcte</p>';
        return false;
    }else {
        document.querySelector("#errorEmail").innerHTML = '';
    }
})


///vérification du tel: 
var tel = document.querySelector("#mobile");
var regexTel = /^(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})$/;

tel.addEventListener("keyup", function () {
    if (!regexTel.test(tel.value) ){
        tel.focus();
        document.querySelector("#errorTel").innerHTML = '<p style="color:red">Merci de saisir un numéro de téléphone correct</p>';
        return false;
    }else {
        document.querySelector("#errorTel").innerHTML = '';
    }
})


/*
/*


function verif() {
    //event.preventDefault();
   
    
    if ((document.querySelector('#firstname').value == '') )  {
        alert('Entrez un prénom ');
        document.querySelector('#firstname').focus();
        document.querySelector('#firstname').style.background = "red";
        document.querySelector('.error').innerHTML = "SVP, entrez votre prénom";
        return false;
    }else{
        document.querySelector('#firstname').style.background = "green";
        document.querySelector('.error').innerHTML = "";
    }
    if ((document.querySelector('#lastname').value == '')  )  {
        alert('Entrez un nom ');
        document.querySelector('#lastname').focus();
        document.querySelector('#lastname').style.background = "red";
        document.querySelector('.error').innerHTML = "SVP, entrez votre nom";
        
        return false;
    }
    var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9])+$/;

    if (!regex.test(document.querySelector('#email').value) )  {
        alert('Entrez un email ');
        document.querySelector('#email').focus();
        document.querySelector('#email').style.background = "red";
        document.querySelector('.error').innerHTML = "Email pas valide";
        return false;
    }

    if (true) {
        document.querySelector('.container').innerHTML = "MERCI, pour votre message, ça fait plaisir   " +document.querySelector('#lastname').value;
    }
}

/*


*/