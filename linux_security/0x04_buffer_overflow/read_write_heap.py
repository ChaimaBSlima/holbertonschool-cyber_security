#!/usr/bin/python3
"""
Memory Modification Script

This script allows modifying the heap memory of a running process by searching 
for a specific string and replacing it with another. It operates on Linux-based 
systems using the `/proc/<pid>/mem` and `/proc/<pid>/maps` interfaces.

Usage:
    python3 read_write_heap.py <pid> <search_string> <replace_string>

Arguments:
    pid            : Process ID of the target process.
    search_string  : String to search for in the heap memory.
    replace_string : String to replace the found search_string.

Example:
    python3 read_write_heap.py 1234 "old_value" "new_value"

Requirements:
    - The script must be run with appropriate permissions to access the process memory.
    - The target process must be running and have a heap segment with read-write permissions.
Buffer overflow
"""

import sys
import os


def usage():
    """
    Displays the correct usage format and exits the program.
    """
    print("Usage: read_write_heap.py <pid> <search_string> <replace_string>")
    sys.exit(1)


def main():
    """
    Main function to modify heap memory of a running process.
    """
    if len(sys.argv) != 4:
        usage()

    pid = int(sys.argv[1])  # Process ID
    search_string = sys.argv[2].encode()  # Convert search string to bytes
    replace_string = sys.argv[3].encode()  # Convert replacement string to bytes

    mem_path = f"/proc/{pid}/mem"   # Path to process memory
    maps_path = f"/proc/{pid}/maps" # Path to memory map file

    try:
        with open(maps_path, 'r') as maps_file:
            for line in maps_file.readlines():
                parts = line.split()
                start = int(parts[0].split('-')[0], 16)  # Start address of segment
                end = int(parts[0].split('-')[1], 16)    # End address of segment
                permissions = parts[1]  # Memory permissions

                # Check if the segment is the heap and has read-write permissions
                if 'heap' in line and 'rw-p' in permissions:
                    with open(mem_path, 'r+b') as mem_file:
                        mem_file.seek(start)
                        data = mem_file.read(end - start)

                        # Search for the string in memory
                        index = data.find(search_string)
                        if index != -1:
                            # Replace the string
                            new_data = data[:index] + replace_string + data[index + len(search_string):]

                            # Write the modified data back to memory
                            mem_file.seek(start)
                            mem_file.write(new_data)
                            sys.exit(0)  # Successful replacement

        print("Error: String not found in heap")
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
