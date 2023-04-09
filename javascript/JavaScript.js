//javascript(file's name)
function checkform() {
    var error = false;
    //firstname1
    var firstname = document.getElementById("firstname");
    var firstname1 = document.getElementById("firstname1");
    if (firstname.value.length == 0) {
        firstname1.style.display = 'inline';
        error = true;
        
    }
    else
    {
        firstname1.style.display = 'none';
    }

    //firstname2
    var firstname2 = document.getElementById("firstname2");
    if (!/^[א-ת]+$/.test(firstname.value)) {
        firstname2.style.display = 'inline';
        error = true;
    }
    else
    {
        firstname2.style.display = 'none';
    }
    //firstname3
    var firstname3 = document.getElementById("firstname3");
    if (firstname.value.length <= 1) {
        firstname3.style.display = 'inline';
        error = true;
    }
    else
    {
        firstname3.style.display = 'none';
    }

    var lastname = document.getElementById("lastname");
    //lastname1
    var lastname1 = document.getElementById("lastname1");
    if (lastname.value.length == 0) {
        lastname1.style.display = 'inline';
        error = true;
    }
    else
    {
        lastname1.style.display = 'none';
    }
    //lastname2
    var lastname2 = document.getElementById("lastname2");
    if (!/^[א-ת]+$/.test(lastname.value))
    {
        lastname2.style.display = 'inline';
        error = true;
    }
    else
    {
        lastname2.style.display = 'none';
    }
    //lastname3
    var lastname3 = document.getElementById("lastname3");
    if (lastname.value.length <= 1)
    {
        lastname3.style.display = 'inline';
        error = true;
    }
    else
    {
        lastname3.style.display = 'none';
    }
    //password1
    var password = document.getElementById("password");
    var password1 = document.getElementById("password1");
    if(password.value.length == 0 )
    {
        password1.style.display = 'inline';
        error = true;
    }
    else
    {
        password1.style.display = 'none';
    }

    var idnum = document.getElementById("idnum");
    //idnum1
    var idnum1 = document.getElementById("idnum1");
    if (idnum.value.length != 9 && idnum.value.length != 0)
    {
        idnum1.style.display = 'inline';
        error = true;
    }
    else
    {
        idnum1.style.display = 'none';
    }
    //idnum2
    var idnum2 = document.getElementById("idnum2");
    if (!/^[0-9]+$/.test(idnum.value) && idnum.value.length != 0)
    {
        idnum2.style.display = 'inline';
        error = true;
    }
    else
    {
        idnum2.style.display = 'none';
    }
    //idnum3
    var idnum3 = document.getElementById("idnum3");
    if (idnum.value.length == 0)
    {
        idnum3.style.display = 'inline';
        error = true;
    }
    else
    {
        idnum3.style.display = 'none';
    }
    //gender1
    var gender = document.getElementById("gender");
    var male = document.getElementById("male");
    var female = document.getElementById("female");
    var gender1 = document.getElementById("gender1");
    if (!male.checked && !female.checked)
    {
        gender1.style.display = 'inline';
        error = true;
    }
    else
    {
        gender1.style.display = 'none';
    }
    //location
    var location = document.getElementById("location");
    var location1 = document.getElementById("location1");
    if (location.value == "0")
    {
        location1.style.display = 'inline';
        error = true;
    }
    else
    {
        location1.style.display = 'none';
    }
 
    if (error == true)
    {
        return false;
    }
}
