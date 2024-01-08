# N_AVAX.4
## To create Token For Degen Gaming 
1.This Solidity contract implements a basic ERC20 token named DegenToken. It also includes additional functionalities for redeeming items, setting item prices, and listing available items.
2.I have also used different liabraries which are imported from ERC20.sol ,Ownable.sol,ERC20Burnable.sol which helped me gaining more functions for transfer and burn .

## Preface
The contract extends the ERC20 and Ownable contracts from the OpenZeppelin library.
It defines events, mappings, and functions to manage tokens and items.

## Functions of the Code
1.Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2.Transferring tokens: Players should be able to transfer their tokens to others.
3.Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4.Checking token balance: Players should be able to check their token balance at any time.
5.Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

## implementation using 
Deploy the contract on an Ethereum-compatible blockchain.
Use a wallet or script to interact with the contract's functions.

## Example 
javascript
// Deploy the contract
const DegenToken = artifacts.require('DegenToken');
module.exports = function (deployer) {
  deployer.deploy(DegenToken);
};

// Interact with the contract
const contract = new web3.eth.Contract(DegenToken.abi, 'CONTRACT_ADDRESS');
contract.methods.mint('RECEIVER_ADDRESS', 'AMOUNT').send({ from: 'OWNER_ADDRESS' })

## Author 
Nainika Sathawne
