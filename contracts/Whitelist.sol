// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;
 contract  Whitelist {
   
   // uint8 means that this is the maximum number of addresses that can be whitelisted
    uint8 public maxWhitelistedAddresses;

 mapping(address => bool) public whitelistedAddresses;
    uint8 public numAddressesWhitelisted;


    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }
  
 
function addAddressToWhitelist() public {

      require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");

 require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses cant be added, limit reached");
 whitelistedAddresses[msg.sender] = true;
numAddressesWhitelisted += 1;
} }


// ALCHEMY_API_KEY_URL="https://eth-rinkeby.alchemyapi.io/v2/UU7bLHxzO-gfYFUxNJPJafu9KD6dZPe1"
// RINKEBY_PRIVATE_KEY="77384f7ad4bde57eb574b285a6808bed6814d1fff0f0b383dc4ed054b75622ad"
