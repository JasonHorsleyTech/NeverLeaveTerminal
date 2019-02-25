# ----------------------------------------------------
# GenerateMarkdown
# Shell script that automatically converts markdown
# found in the /md directory to html in execution root
# Written by: Jason Horsley
# License MIT
# ----------------------------------------------------

# sudo npm install -g markdown-styles

# Help flag, a quick how to use
# Hacky flag, but not using any other inputs or flags, so scre it.
if [ "$1" == "-h" ]; then
    echo ""
    echo "This script will take any markdown documents "
    echo "in ./md and build them as HTML pages in ./"
    echo "with the github style pre-applied."
    echo ""
    echo "If you want to set layout, or a new I/O "
    echo "directory, use the following direct command"
    echo ""
    echo ">> generate-md --layout [github/bootstrap3/whatever] --input ./dir --output ./dir"
    echo ""
    echo "Requires an npm install"
    echo "> sudo npm install -g markdown-styles"
    echo ""
    echo "For further help, check their github: "
    echo "https://github.com/mixu/markdown-styles"
else
    generate-md --layout github --input ./md --output ./
fi
