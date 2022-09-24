// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

// import './access-control/Auth.sol';
import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {

    uint256 private _value;
    // Auth private _auth;
    
    constructor () {
        // _auth = new Auth(msg.sender);
    }

    event ValueChanged(uint256 value);

    function store(uint256 value) public onlyOwner{
        // require(_auth.isAdministrator(msg.sender), "Unauthorized");

        _value = value;
        emit ValueChanged(value);
    }

    function _retrieve() public view returns(uint256) {
        return _value;
    }

}