//service implementation
const myservice = function(srv){
 
    srv.on('hello', (req, res) => {
        return "hey! " + req.data.name;
    });
 
}
 
module.exports = myservice;