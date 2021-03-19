echo "deploy begin....."

mkdir -p ./deployments

TF_CMD=node_modules/.bin/truffle-flattener

echo "" >  ./deployments/INXV2Router02.full.sol
cat  ./scripts/head.sol >  ./deployments/INXV2Router02.full.sol
$TF_CMD ./contracts/INXV2Router02.sol >>  ./deployments/INXV2Router02.full.sol

echo "deploy end....."