//Raffle
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

Raffle__NotEnoughETHEntered();
contract Raffle {
    /* state variables */
    uint256 private immutable i_entranceFee;
    address payable[] private s_players;

    constructor(uint256 entrenceFee) {
        i_entranceFee = entranceFee;

    }
//enter the lottery 
function enterRaffle() public payable {
    if(msg.value < i_entranceFee,){
        revert Raffle__NotEnoughETHEntered();
    }

    s_players.push(payable(msg.sender)
}
//pick random winner
// function pickRandomWinner() {

// }

function getEntranceFee() public view return(uint256) {
    i_entranceFee;
}

function getPlayer(uint256 index) public view returns(address){
    return s_players[index]
}

//winner to be selected every x min

//chainlink oracle will help with the randomness, automated exicution (chainlink keepers)


}