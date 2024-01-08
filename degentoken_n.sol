// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token4Degen is ERC20, Ownable {

    string[] public items_Name = ["1. Diamond Tier", "2. Gold Tier", "3. Bronze Tier", "4. Rookie Tier"];

   constructor() ERC20("Degen_Tkn", "DGN") Ownable(msg.sender) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
  // Transfer token is used of transferring tokens with an additional check 
    function transferToken(address to, uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient Tokens please try again");
        approve(msg.sender, amount);
        transferFrom(msg.sender, to, amount);
    }
   //Redeem function helps to redeem specific item 
function redeem(uint to_redeem) public returns(string memory) {
    require(balanceOf(msg.sender) >= 50, "Insufficient Tokens please try again");
    if(balanceOf(msg.sender) >= 1050 && to_redeem == 1012){
        _burn(msg.sender, 150);
        return items_Name[3];
    }
    else if(balanceOf(msg.sender) >= 100 && to_redeem == 2023){
        _burn(msg.sender, 1000);
        return items_Name[2];
    }
    else if(balanceOf(msg.sender) >= 50 && to_redeem == 3035){
        _burn(msg.sender, 500);
        return items_Name[1];
    }
    else if(balanceOf(msg.sender) >= 10 && to_redeem == 4005){
        _burn(msg.sender, 100);
        return items_Name[0];
    }
    else {
        return "Put a Valid redeemption code";
    }
}
    // view balance function is used for checking users balance .
    function viewBalance() public view returns(uint) {
        return balanceOf(msg.sender);
    }
    // burn function  is used to burn tokens. 
    function burnToken(uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient Tokens please try again");
        _burn(msg.sender, amount);
    }
    
}
