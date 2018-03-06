pragma solidity ^0.4.19;

import 'github.com/chris-bluemoon/OpenZeppelin/contracts/examples/SampleCrowdsale.sol';
import 'github.com/chris-bluemoon/OpenZeppelin/contracts/token/ERC20/MintableToken.sol';

contract SCTCrowdsale is SampleCrowdsale {

    function SCTCrowdsale(uint256 _openingTime, uint256 _closingTime, uint256 _rate, address _wallet, uint256 _cap, uint256 _goal)
    SampleCrowdsale(_openingTime, _closingTime, _rate, _wallet, _cap, createTokenContract(), _goal)
    {

    }

    function createTokenContract() internal returns (MintableToken) {
        return new SampleCrowdsaleToken();
    }

}