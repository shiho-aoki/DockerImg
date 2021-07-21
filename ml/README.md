## how to create the development environment
1. copy docker file
2. $ docker build . -t ubuntu
3. $ docker image ls
4. $ docker run --name internalapi -itd -p 3001:3001 imageId
5. (if you don't use vscode) $ docker exec -it internalapi bash