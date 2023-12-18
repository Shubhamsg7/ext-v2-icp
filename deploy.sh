dfx identity use tonic
PRINCIPAL=$(dfx --identity tonic identity get-principal)
dfx canister stop ext_v2 || true
dfx canister delete ext_v2 || true
dfx deploy --argument "(principal \"${PRINCIPAL}\")" ext_v2 || true
dfx ledger fabricate-cycles --all || true