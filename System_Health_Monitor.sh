#!/bin/bash

source config.conf

echo "System Check Started..."
echo "Note: Select an option from the menu below."

while true; do
  echo
  echo "=============================="
  echo "Select One:"
  echo "0) Exit"
  echo "1) Check Disk Usage"
  echo "2) Check Memory Usage"
  echo "3) Check Memory Usage (top)"
  echo "4) Check CPU Load"
  echo "=============================="

  read -r -p "Enter your choice: " choose

  case "$choose" in
    0)
      echo "Exiting..."
      exit 0
      ;;
    1)
      df -h
      ;;
    2)
      free -h
      ;;
    3)
      top -b -n 1
      ;;
    4)
      uptime
      ;;
    *)
      echo "Invalid option. Please choose a valid number."
      ;;
  esac
done
