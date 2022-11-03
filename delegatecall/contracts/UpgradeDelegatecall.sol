// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./ITest.sol";

contract UpgradeDelegatecall {
    address public origin;
    uint256 public num;
    address public sender;
    uint256 public value;

    function callSetNum(uint256 _num) external payable returns (bytes memory) {
        (bool success, bytes memory data) = origin.delegatecall(
            abi.encodeWithSelector(ITest.setNum.selector, _num) // delegatecall function "setNum" from contract "Test"
        );

        require(success, "delegatecall failed");

        return data;
    }

    function upgradeOrigin(address _origin) external {
        origin = _origin;
    }
}
