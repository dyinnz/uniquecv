repo=???
docker pull $repo
docker run -it --name resume -d $repo
docker cp resume:/home ~/Downloads
docker rm --force resume
docker rmi $repo
