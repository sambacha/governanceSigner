#!/bin/bash -u

#

. ./.env
. ./.sanity.sh

PARAMS=""

displayUsage()
{
echo -e "\033[31;3m████████████████████████████████████████████████████████████████████████████████████████████"
echo -e "\033[31;3m██ THIS IS A NOTICE OF MONITORING OF THE FREIGHT TRUST NETWORK (FTN) INFORMATION SYSTEMS  ██"
echo -e "\033[31;3m████████████████████████████████████████████████████████████████████████████████████████████"
sleep 2
echo -e "\033[31;3m████████████████████████████████████████████████████████████████████████████████████████████"
echo -e "\033[31;3m██   BY CONNECTING TO AND/OR USING THIS 'NETWORK' YOU CERTIFY THAT YOU AGREE TO ABIDE     ██"
echo -e "\033[31;3m██      BY THE RULES OF BEHAVIOR AND THE OMNIBUS RULEBOOK v5.0.0 & WARNING BANNER.        ██"
echo -e "\033[31;3m████████████████████████████████████████████████████████████████████████████████████████████"
echo -e "\n"
  echo "You can select the consensus mechanism to use.\n"
  echo "Usage: ${me} [OPTIONS]"
  echo "    -c <mainnet|testnet|eth> : the network you want to connect to
                                       on your network, default is ethash"
  echo "    -e                       : setup ELK with the network."
  echo "    -s                       : test ethsigner with the rpcnode (available when using a POA consensus algorithm. Note the -s option must be preceeded by the -c option"
  exit 0
}