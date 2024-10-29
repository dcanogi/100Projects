# Day 1 Objective: Write a Python script that checks if specific services or processes are running on your system.

# Define a list of service/process names to check
# Check each service and log whether it is running
# Log the results to a file
# Import necessary library
import os

# Define the services or processes to check
services = ["Docker", "W32Time", "WinDefend"]  # Replace with actual service names in Windows

# Set the file name for output
output_file = "service_status.txt"

# Check each service and write its status to the file
with open(output_file, "w") as file:  # 'w' mode opens the file for writing
    for service in services:
        # Check if the service is running on Windows
        status = "running" if os.system(f"sc query {service} | findstr /C:\"RUNNING\"") == 0 else "not running"
        
        # Write the service status to the file
        file.write(f"{service} is {status}\n")
        print(f"{service} is {status}\n")

print(f"Status written to {output_file}")
