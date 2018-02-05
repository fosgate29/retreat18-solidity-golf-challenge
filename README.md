# retreat18-solidity-golf-challenge

A repository hosting the submissions to the Solidity Golf Challenge of the ConsenSys 2018 retreat.

## Participating

Just submit a PR of with a file titled <your_name>_golf.sol or <your_name>_gas_challenge.sol depending on which challenge you are entering for (you can participate in both).

## Contract Specification

The contract is supposed to:

* Allow deposits only by the account that deployed it.
* Have a public function  to disburse `X`% of its balance to an address `A`.
* `A` must be set by the deployer and not at compile time.
* At deploy time `X = 5` and after that `X = <block height at last execution> % 100`.
* The disbursement function must only be called once every 105 blocks. Otherwise it should revert the transaction.

## Rules

* All source code files that don't compile (i.e. throws an error, as opposed to a warning, at compile time) with `solc` v0.4.18 will be disqualified.
* The contest will run until Wednesday, February 7th, 1200 UTC at which time the winners will be chosen.
* Assembly blocks are **not** permitted. Every submission should be written in vanilla Solidity.
* Usage of external libraries is not permitted. All code should be written by the contestant.
* When submitting the contract please comment in the PR what's the name of each of the functions.

* For the Solidity Golf challenge the source code file with the least amount of characters will be pronounced the winner.
* For the Solidity Gas Optimization challenge the source code file that has the smaller execution cost will be pronounced the winner.

The testing execution path for both challenges will be fixed and revealed after the winners are chosen.

## Any doubts?

Just reach out to ~@goncalo.sa~ (GNSPS :D) in Slack
