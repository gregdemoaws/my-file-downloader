#!/bin/bash

download_file() {
    local url_to_download=$1
    local filename=$2
    echo ""
    echo "url_to_download: ${url_to_download}"; echo ""
    echo "filename: ${filename}"; echo ""

    # Download the file using curl, with error handling
    curl --fail --user-agent "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" -o "$filename" "$url_to_download" || { echo "Error: Failed to download file $url" ; return 1; }

    # Get the file type ("image/png" for instance)
    file_type=$(file -b --mime-type "${filename}")

    # Extract the file extension
    extension=$(echo "$file_type" | awk -F/ '{print $2}')

    # Rename the file by appending the correct file extension
    mv "$filename" "$filename.$extension"

    echo "end of download_file succeeded!"
}

# Call the function with the URL of the file and the name of the local file to create (without any extension)
download_image $1 $2
