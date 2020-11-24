@echo off
echo "Create the necessary directories"
mkdir logs
mkdir documents
mkdir fonts
mkdir mailTemplates
echo "Download the latest version of the image from Docker Cloud"
docker pull ryorobo/rcj-rescue-scoring-japan:latest
echo "Create data storage for MongoDB"
docker volume create --name=mongodata
echo "Launch the image"
run.bat
