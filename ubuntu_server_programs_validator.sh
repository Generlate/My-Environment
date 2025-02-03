#!/usr/bin/env zsh
echo "Validating whether the programs were installed properly"

# Read the list of programs from README.md
required_programs=($(grep -oP '(?<= == ).*' README.md))

# Function to check if a program is installed
check_command() {
  if command -v "$1" &>/dev/null; then
    installed_programs+=("$1")
  else
    missing_programs+=("$1")
  fi
}

# Arrays to store installed and missing programs
installed_programs=()
missing_programs=()

# Check CLI-based programs
echo -e "\nChecking installed programs..."
for program in "${required_programs[@]}"; do
  check_command "$program"
done

# Output results for installed programs
echo -e "\n\033[1;32m=== Installed Programs ===\033[0m"
if [ ${#installed_programs[@]} -gt 0 ]; then
  for installed in "${installed_programs[@]}"; do
    echo -e "\033[32m✔ $installed\033[0m"
  done
else
  echo -e "\033[33mNo installed programs found.\033[0m"
fi

# Output results for missing programs
echo -e "\n\033[1;31m=== Missing Programs ===\033[0m"
if [ ${#missing_programs[@]} -gt 0 ]; then
  for missing in "${missing_programs[@]}"; do
    echo -e "\033[31m✘ $missing\033[0m"
  done
  echo -e "\n\033[31mSome programs are missing. Please install them.\033[0m"
  return 1  
else
  echo -e "\n\033[32mAll required programs are installed successfully!\033[0m"
  return 0  
fi
