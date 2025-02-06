## create bucket
aws s3 mb s3://checksum-example

## create file
touch filename

## create md5
md5sum filename

## upload the file

aws s3api put-object --bucket checksum-example --key checksumfile.txt --body checksumfile.txt --checksum-algorithm="CRC32"





## get head object
aws s3api head-object --bucket checksum-example --key checksumfile.txt




## upload file with changing checksum algorithm
sudo apt install libarchive-zip-perl