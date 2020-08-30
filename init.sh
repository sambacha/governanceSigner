#!/bin/bash -u

#

. ./.env
. ./.sanity.sh

PARAMS=""

displayUsage()
{
echo -e "\033[31;3m███████████████████████"
echo -e "\033[31;3m██ GOVERNANCE SIGNER ██"
echo -e "\033[31;3m███████████████████████"
sleep 2
echo -e "\n"
  echo "You can select the consensus mechanism to use.\n"
  echo "Usage: ${me} [OPTIONS]"
  echo "    -c <mainnet|testnet|other> : the network you want to connect to
                                       on your network, default is MAINNET"
  echo "    -e                       : setup"
  echo "    -s                       : test ethsigner with local rpcnode"
  exit 0
}
