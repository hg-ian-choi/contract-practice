// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./Test2.sol";

contract Test3 is Test2 {
    function setNum(uint256 _num) public virtual override {
        num = _num * 2;
        emit SetNum(_num);
    }
}
