# ----------------------------------------------------
# WhatAreMyShells
# Echos out a decent list of all my shell scripts
# along with how to use them
# Written by: Jason Horsley
# License MIT
# ----------------------------------------------------

. ~/Projects/NeverLeaveTerminal/ShellScripts/_colors.sh
clear
echo ""
echo -e "${COL_Red}Custom Shell Scripts${COL_NC}"
echo ""
echo -e "${COL_Green}AddMIT: ${COL_Blue}Adds the MIT license (with default name and year) in your cwd.${COL_NC}"
echo -e "${COL_Green}BuildMarkdown: ${COL_Blue}Takes all .md files in the /md directory and generates .html files (based on the github markdown style) at ./${COL_NC}"
echo ""
echo -e "${COL_Red}Bash Aliases (one liners)${COL_NC}"
echo ""
echo -e "${COL_Green}alert: ${COL_Blue}Tag on to other long commands to alert (top right message) and beep at the end of the first command${COL_NC}"
echo -e "${COL_Green}startSass: ${COL_Blue}Start a sassWatch (scss:css) in cwd, log goes to ~/logs/sassWatch.log${COL_NC}"
# List help in bashrc (surely loaded. Surely)
# ls help
lsh
# cd help
cdh

