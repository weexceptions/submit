/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




 

var login_success = false;  /* set this to true if the login was a success */

if(login_success == false)
{
    document.getElementById("").innerHTML = "Login Failed."
}
else
{
     window.location = "login_success.html"
     }
          
function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
} 
// validates text only
function Validate(txt) {
    txt.value = txt.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
    txt.value=txt.value.replace('\'','');
    txt.value=txt.value.replace('\' \'','');
    txt.value=txt.value.replace('\'\'\'','');
    txt.value=txt.value.replace('\'\'\'\'','');
    txt.value=txt.value.replace('\'\'\'\'\'','');
    txt.value=txt.value.replace('\'\'\'\'\'\'','');
    txt.value=txt.value.replace('\'\'\'\'\'\'\'','');
    txt.value=txt.value.replace('\'\'\'\'\'\'\'\'\'\'\'','');
    txt.value=txt.value.replace('\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'','');
    txt.value=txt.value.replace('\"','');
    txt.value=txt.value.replace('\"\"','');
    txt.value=txt.value.replace('\"\"\"','');
    txt.value=txt.value.replace('\"\"\"\"','');
    txt.value=txt.value.replace('\"\"\"\"\"','');
    txt.value=txt.value.replace('\"\"\"\"\"\"','');
    txt.value=txt.value.replace('\"\"\"\"\"\"\"','');
    txt.value=txt.value.replace('\"\"\"\"\"\"\"\"\"\"\"','');
    txt.value=txt.value.replace('\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"','');
}