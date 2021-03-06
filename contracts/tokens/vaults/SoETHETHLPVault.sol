// SPDX-License-Identifier: WTFPL
pragma solidity 0.6.12;

import "../SodaVault.sol";

// Owned by Timelock
contract SoETHETHLPVault is SodaVault {

    constructor (
        SodaMaster _sodaMaster,
        IStrategy _createSoda
    ) SodaVault(_sodaMaster, "Soda SoETH-ETH-UNI-V2-LP Vault", "vSoETH-ETH-UNI-V2-LP") public  {
        IStrategy[] memory strategies = new IStrategy[](1);
        strategies[0] = _createSoda;
        setStrategies(strategies);
    }
}
