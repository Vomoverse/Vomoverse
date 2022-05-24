pragma solidity ^0.4.17;


contract Airdrop {
    string public constant name = "VOMO";
    string public constant symbol = "Vomo_B";
    uint public constant decimals = 18;
     event Transfer(address indexed from, address indexed to, uint256 _value);
     address public presaletoken;
    uint numTokens ;
     mapping (address => uint256) private balance;
/// Functions:
/// @dev Constructor
    function Airdrop(uint _numTokens) public {
    numTokens = _numTokens;
 }

     function Drop(address receiver) public {
        balance[msg.sender] -= numTokens;
        balance[receiver] += numTokens;
        emit Transfer(msg.sender, receiver, numTokens);
    }
    /// @dev Returns number of tokens owned by given address.
/// @param _owner Address of token owner.
    function balanceOf(address _owner) constant returns (uint256) {
    return balance[_owner];
    }

}
