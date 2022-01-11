
// var macaddress = require('macaddress');
console.log("inside external js file");
$.getJSON("https://api.ipify.org?format=json", function(data) {
         
        // Setting text of element P with id gfg
        $("#gfg").html(data.ip);
    })

    // macaddress.all(function (err, all) {
    //     console.log(JSON.stringify(all, null, 2));
    //   });