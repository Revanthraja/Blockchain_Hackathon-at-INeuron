const Dai = artifacts.require("Dai.sol");
const PaymentProcesor=artifacts.require("PaymentProcessor.sol");

module.exports = function (deployer,network,addresses) {
    const[admin,payer,_]=addresses;
    
    if(network=='develop'){
         async() => {await deployer.deploy(Dai);
      const  dai = await Dai.deployed();
        await dai.faucet(payer,web3.toWei('10000'));
       await deployer.deploy(PaymentProcesor,admin,dai.address);}
    }else{
        async() => {
        const ADMIN_ADDRES="";
        const DAI_ADDRES="";
       await deployer.deploy(PaymentProcesor,ADMIN_ADDRES,DAI_ADDRES);}
    }

  
};
