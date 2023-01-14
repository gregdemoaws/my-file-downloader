# my-file-downloader
Simple shell script that downloads a file thanks to an URL

## How to use it
``` ./download_file.sh [URL] [FILENAME_WITHOUT_EXTENSION]```

(the original file extension will be automatically added to the downloaded file)

## Example
```./download_file.sh https://www.publicdomainpictures.net/pictures/20000/velka/airplane-landing.jpg mylocalimage```

This will create a mylocalimage.jpeg file (the file extension is based on the file metadata)
