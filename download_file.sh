#!/bin/bash

download_file() {
    local url_to_download=$1
    local output_file_path=$2
    echo ""
    echo "url_to_download: ${url_to_download}"; echo ""
    echo "output_file_path: ${output_file_path}"; echo ""

    # Download the file using curl, with error handling
    curl --fail --user-agent "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" -o "$output_file_path" "$url_to_download" || { echo "Error: Failed to download file $url" ; return 1; }

    echo "end of download_file succeeded!"
}

# Call the function with the URL of the file and the output file path to use
download_file $1 $2
