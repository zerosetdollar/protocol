/*
    Copyright 2020 Zero Set Dollar Devs

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

pragma solidity ^0.5.17;
pragma experimental ABIEncoderV2;

import "../dao/Curve.sol";

contract MockCurve is Curve {
    constructor () public { }

    function calculateCouponsE(
        uint256 totalSupply,
        uint256 totalDebt,
        uint256 amount
    ) external pure returns (uint256) {
        return super.calculateCouponPremium(totalSupply, totalDebt, amount);
    }
}
