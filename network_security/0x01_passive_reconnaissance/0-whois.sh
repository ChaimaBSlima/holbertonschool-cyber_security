#!/bin/bash

# Run whois command and save the output to a variable
whois_output=$(whois $1)

# Extract and format the desired fields, redirect output to CSV file
{
  echo "Registrant Name, $(echo "$whois_output" | grep 'Registrant Name:' | sed 's/Registrant Name: *//')"
  echo "Registrant Organization, $(echo "$whois_output" | grep 'Registrant Organization:' | sed 's/Registrant Organization: *//')"
  echo "Registrant Street, $(echo "$whois_output" | grep 'Registrant Street:' | sed 's/Registrant Street: *//')"
  echo "Registrant City, $(echo "$whois_output" | grep 'Registrant City:' | sed 's/Registrant City: *//')"
  echo "Registrant State/Province, $(echo "$whois_output" | grep 'Registrant State/Province:' | sed 's/Registrant State\/Province: *//')"
  echo "Registrant Postal Code, $(echo "$whois_output" | grep 'Registrant Postal Code:' | sed 's/Registrant Postal Code: *//')"
  echo "Registrant Country, $(echo "$whois_output" | grep 'Registrant Country:' | sed 's/Registrant Country: *//')"
  echo "Registrant Phone, $(echo "$whois_output" | grep 'Registrant Phone:' | sed 's/Registrant Phone: *//')"
  echo "Registrant Phone Ext, $(echo "$whois_output" | grep 'Registrant Phone Ext:' | sed 's/Registrant Phone Ext: *//')"
  echo "Registrant Fax, $(echo "$whois_output" | grep 'Registrant Fax:' | sed 's/Registrant Fax: *//')"
  echo "Registrant Fax Ext, $(echo "$whois_output" | grep 'Registrant Fax Ext:' | sed 's/Registrant Fax Ext: *//')"
  echo "Registrant Email, $(echo "$whois_output" | grep 'Registrant Email:' | sed 's/Registrant Email: *//')"
  echo "Admin Name, $(echo "$whois_output" | grep 'Admin Name:' | sed 's/Admin Name: *//')"
  echo "Admin Organization, $(echo "$whois_output" | grep 'Admin Organization:' | sed 's/Admin Organization: *//')"
  echo "Admin Street, $(echo "$whois_output" | grep 'Admin Street:' | sed 's/Admin Street: *//')"
  echo "Admin City, $(echo "$whois_output" | grep 'Admin City:' | sed 's/Admin City: *//')"
  echo "Admin State/Province, $(echo "$whois_output" | grep 'Admin State/Province:' | sed 's/Admin State\/Province: *//')"
  echo "Admin Postal Code, $(echo "$whois_output" | grep 'Admin Postal Code:' | sed 's/Admin Postal Code: *//')"
  echo "Admin Country, $(echo "$whois_output" | grep 'Admin Country:' | sed 's/Admin Country: *//')"
  echo "Admin Phone, $(echo "$whois_output" | grep 'Admin Phone:' | sed 's/Admin Phone: *//')"
  echo "Admin Phone Ext, $(echo "$whois_output" | grep 'Admin Phone Ext:' | sed 's/Admin Phone Ext: *//')"
  echo "Admin Fax, $(echo "$whois_output" | grep 'Admin Fax:' | sed 's/Admin Fax: *//')"
  echo "Admin Fax Ext, $(echo "$whois_output" | grep 'Admin Fax Ext:' | sed 's/Admin Fax Ext: *//')"
  echo "Admin Email, $(echo "$whois_output" | grep 'Admin Email:' | sed 's/Admin Email: *//')"
  echo "Tech Name, $(echo "$whois_output" | grep 'Tech Name:' | sed 's/Tech Name: *//')"
  echo "Tech Organization, $(echo "$whois_output" | grep 'Tech Organization:' | sed 's/Tech Organization: *//')"
  echo "Tech Street, $(echo "$whois_output" | grep 'Tech Street:' | sed 's/Tech Street: *//')"
  echo "Tech City, $(echo "$whois_output" | grep 'Tech City:' | sed 's/Tech City: *//')"
  echo "Tech State/Province, $(echo "$whois_output" | grep 'Tech State/Province:' | sed 's/Tech State\/Province: *//')"
  echo "Tech Postal Code, $(echo "$whois_output" | grep 'Tech Postal Code:' | sed 's/Tech Postal Code: *//')"
  echo "Tech Country, $(echo "$whois_output" | grep 'Tech Country:' | sed 's/Tech Country: *//')"
  echo "Tech Phone, $(echo "$whois_output" | grep 'Tech Phone:' | sed 's/Tech Phone: *//')"
  echo "Tech Phone Ext, $(echo "$whois_output" | grep 'Tech Phone Ext:' | sed 's/Tech Phone Ext: *//')"
  echo "Tech Fax, $(echo "$whois_output" | grep 'Tech Fax:' | sed 's/Tech Fax: *//')"
  echo "Tech Fax Ext, $(echo "$whois_output" | grep 'Tech Fax Ext:' | sed 's/Tech Fax Ext: *//')"
  echo "Tech Email, $(echo "$whois_output" | grep 'Tech Email:' | sed 's/Tech Email: *//')"
} > "$1.csv" 2>/dev/null
