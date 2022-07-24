//SPDX-LINCENCED-Identifier: GPL-3.0
pragma solidity >=0.5.1 <0.9.0;
import  '@openzeppelin/contracts/token/ERC20/IERC20.sol';
contract PaymentProcessor{
    address payable admin;
    IERC20 public dai;
    
    // constructor  (address adminadress,address daiadderss) public
    constructor(){
        admin = payable (msg.sender);

            //dai=IERC20(daiadderss);
    }
    event paymentdone(
        address payer,
        uint amount,
        uint paymentId,
        uint date
    );
    function pay(uint amount,uint paymentId)external{
        dai.transferFrom(msg.sender,admin,amount);
        emit paymentdone(msg.sender,amount,paymentId,block.timestamp);

    }
}
