#!/bin/bash

# Input parameters: account number, transaction type, and amount
account_number=$1
transaction_type=$2
amount=$3
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

# Get the current timestamp
timestamp= #todo

# Log the transaction in transaction_log.txt
#todo

# Check if the transaction is a high-value withdrawal
#todo
