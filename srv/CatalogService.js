module.exports = cds.service.impl(async function(){
     
    const {EmployeeSet, POs} = this.entities;
    this.on('boost', async (req, res) => {
        try {
            const ID = req.params[0];
            const tx = cds.tx(req);
            await tx.update(POs).with({
                GROSS_AMOUNT: {'+=' : 20000},
            }).where(ID);
        } catch (error) {
            return "Error : " + error.toString();
        }
    });
 
 
});