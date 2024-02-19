APPNAME="token_37162313"

ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

QUERY_URL="https://api.explorer.aleo.org/v1"
BROADCAST_URL="${QUERY_URL}/testnet3/transaction/broadcast"

snarkos developer execute "${APPNAME}.aleo" mint_private \
    aleo1drdudky8var4wcre8g0ywgfkzn0c4z2j4s6amz9kdfrnm4v4fyrqm3d6s4 \
    100u64 \
  --private-key "${PRIVATE_KEY}" \
  --query "${QUERY_URL}" \
  --priority-fee 3000000 \
  --broadcast "${BROADCAST_URL}" \