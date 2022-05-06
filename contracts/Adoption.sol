pragma solidity ^0.5.0;

contract Adoption {
    // Array of Ethereum address that are 16 lengths long. 
    address[16] public adopters; 

    // Adopting a pet 
    function adopt(uint petId) public returns(uint)
    {
        require(petId >=0 && petId <=15);

        adopters[petId] = msg.sender;
        return petId; 
    }

    function getAdopters() public view returns (address[16] memory) 
    {
        return adopters; 
    }

}