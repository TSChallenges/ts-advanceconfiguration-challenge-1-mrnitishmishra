#Create a monitor_transactions.sh script that: Scans the transaction_log.txt. 
#Identifies any withdrawals of ₹50,000 or more and prints a summary of those transactions.

#Sample output: 
  # Suspicious Transactions:  2024-10-26 14:10:32 | Account: 67890 | Withdraw: 50000
While IFS="|" read col1 col2 col3
do
  echo $col3 >> out.txt
done <transaction_log.txt

While IFS=":" read c1 c2
do
  if (("$c1"=="withdraw" && $c2>=50000)); then
    echo $c1":"$c2
  fi
done < out.txt
