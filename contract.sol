// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract toDecimal {
    // BINARY TO DECIMAL
    function binaryToDecimal(string memory binary) public pure returns (uint256) {
        uint256 decimal = 0;
        uint256 base = 1;
        for (uint256 i = bytes(binary).length; i > 0; i--) {
            if (bytes(binary)[i - 1] == "1") {
                decimal += base;
            }
            base *= 2;
        }
        return decimal;
    }
    function decimals(string memory _num) public pure returns (uint256) {
        return binaryToDecimal(_num);
    }

}
