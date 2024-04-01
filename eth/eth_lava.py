import time
from web3 import Web3

eth_wallet = input("please add your eth wallet")

def get_eth_balance(wallet_address, rpc_endpoint):
    # Connect to the Ethereum node
    web3 = Web3(Web3.HTTPProvider(rpc_endpoint))

    # Check if the connection is successful ß
    if web3.is_connected():
        # Get the balance of the wallet address
        balance_wei = web3.eth.get_balance(wallet_address)
        balance_eth = web3.from_wei(balance_wei, 'ether')
        return balance_eth
    else:
        print("Error: Unable to connect to the RPC endpoint")
        return None

# Function to repeatedly fetch and print the balance every minute
def run():
    while True:
        wallet_address = eth_wallet
        rpc_endpoint = "https://eth1.lava.build/lava-referer-8dacf697-a98b-4b84-bc0a-6782688c9bf3/"
        balance = get_eth_balance(wallet_address, rpc_endpoint)
        if balance is not None:
            print(f"Balance of {wallet_address}: {balance} ETH")
        time.sleep(60)  # Sleep for 60 seconds (1 minute)

# Start the script
run()