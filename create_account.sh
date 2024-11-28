#!/bin/bash

# Input parameters: username and account number
username=$1
account_number=$2
transaction_type=$3
amount=$4
log_file="transaction.sh"

if [["$transaction_type" != "deposite" && "$transaction_type" != "withdrawal" ]]; then
    echo "Error: Transaction type must be either 'deposite' or 'withdrawl'."
    exit 1
fi

if ! [[ "$amount" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Amount must be a positive number."
    exit 2
fi

timestamp=$(date + "%Y-%m-%d %H:%M:%S")

echo "$timestamp | Account: $account_number | Type: $transaction_type | Amount: $amount" >>$log_file"

echo "transaction logged successfully in $log_file."



# Default balance for new accounts
default_balance= #todo

# Check if account already exists in accounts.txt
#todo

# Add the new account to accounts.txt
#todo

# Create the user in the system (if running in a real Linux environment)
#todo

