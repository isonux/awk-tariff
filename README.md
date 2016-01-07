# awk-tariff
This script was done to solve a problem in pricing tickets that were generated from a Central Telefonica Alcatel.

## Command
		$ awk -f awk-tariff.awk < ticket.txt > result.txt

## Example
		$ cat ticket.txt | head -n 1 | awk -F" " '{print $4,$5,$6,$7,$10}'
		
		30000000 01/09/2014 09:15:00 103 0
		
		$ awk -f awk-tariff.awk < ticket.txt > result.txt

		$ cat result.txt | head -n 1 | awk -F" " '{print $4,$5,$6,$7,$10}'

		30000000 01/09/2014 09:15:00 103 0.26
