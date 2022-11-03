// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Test2 {
    uint256 public num;
    address public sender;
    uint256 public value;

    function setNum(uint256 _num) external payable {
        num = _num - 1;
        sender = msg.sender;
        value = msg.value;
    }
}
