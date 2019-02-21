# ----------------------------------------------------
# AddMIT
# A shell script to generate the MIT license in cwd
# Author: Jason Horsley
# License MIT
# ----------------------------------------------------

# Verify the type of input and number of values
USAGE="USAGE: $0 copyright_year copyright_holders"
if [ $# -eq 0 ] ; then
    # Jason Added... save a second
    COPYRIGHT_YEAR="2019"
    COPYRIGHT_HOLDERS="JasonHorsleyTech"
elif [ $# -eq 1 ] ; then
    exec >&2; echo ""; echo $USAGE

    if ! [[ "$1" =~ ^[0-9]+$ ]] ; then
        echo "    ERROR: copyright_year is missing, or is not a number"
    else
        echo "    ERROR: copyright_holders is missing."
    fi

    echo ""; exit 1
else
    # Set vars
    COPYRIGHT_YEAR=$1				# 1st command line argument
    COPYRIGHT_HOLDERS=$2
fi

read -p "Do you want to use $COPYRIGHT_YEAR and $COPYRIGHT_HOLDERS? (y/n): " conf
if [ "$conf" = "y" ]; then
    # Source: http://opensource.org/licenses/MIT

    cat > LICENSE << EOF
The MIT License (MIT)

Copyright (c) $COPYRIGHT_YEAR $COPYRIGHT_HOLDERS

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
EOF
echo "Done. In Torvalds we trust"
else
    echo "Exited... Proper usage: $USAGE"
fi

