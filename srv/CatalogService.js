module.exports = cds.service.impl(async function(){

    this.on('boost', async(req)=> {
        console.log('aa gaya');
        return {
            "NODE_KEY": "Dummy"
        };
    });
});
