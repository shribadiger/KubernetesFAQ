/*
    Node js code to handle the os command to run with parameters
*/
const util = require('util');
const exec = util.promisify(require('child_process').exec);
async.parallel([
    function(callback) {
        exec("oc login localhost:8443 --username=myuser --password=mypass", function(error, result1) {
            if (error)
                return callback(error);
            callback(null, result1);
        });
    },
    function(callback) {
        exec("oc run cmbulkservice --image=cmbulkservice", function(error, result2) {
            if (error)
                return callback(error);
            callback(null, result2);
        });
    },
    function(callback) {
        exec("oc status", callback);
    }
],
function(error, results) {
   /* Calling the oc login/ run /status of pod sequentially*/
    if (error)
        return console.log(error);
    user_program(results);
});
