from manticore.ethereum import ManticoreEVM

ETHER = 10**18

m = ManticoreEVM()

user_account = m.create_account(balance=1000*ETHER)
print("[+] Creating a user account", user_account)

with open('test.sol') as f:
    contract_account = m.solidity_create_contract(f, owner=user_account)
print("[+] Creating a contract account", contract_account)

print("[+] Now the symbolic values")
symbolic_value = m.make_symbolic_value(name="value")
contract_account.solve(symbolic_value, caller=user_account)

print("[+] Resulting balances are:")
for state in m.all_states:
    balance = state.platform.get_balance(int(user_account))
    print(state.solve_one(balance))

m.finalize()
print(f"[+] Look for results in {m.workspace}")
