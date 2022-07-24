pragma solidity >=0.4.0 <0.9.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Dai is ERC20{
    constructor()  ERC20('Dai-Stablecoin','DAI')public{}
    function faucet(address to ,uint amount)external{
        _mint(to,amount);
    }
}