// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "solady/src/utils/SignatureCheckerLib.sol";

abstract contract ReadHandler {
    address public signer;
    string[] public urls;

    error OffchainLookup(address sender, string[] urls, bytes callData, bytes4 callbackFunction, bytes extraData);

    constructor(string[] memory _urls) {
        urls = _urls;
    }

    function setUrls(string[] memory _urls) external virtual {
        urls = _urls;
    }
}
