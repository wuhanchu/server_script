#!/bin/bash
# ssh -p 3422 root@server.aiknown.cn "source ./script/export_docker.sh z_smartcall/z_smartcall_web:2.3.3_phfund"
# xmu@recsys214

file_name="$1.tar"
file_name=${file_name/\//_}
echo $file_name

docker pull server.aiknown.cn:31003/$1
docker save -o $file_name server.aiknown.cn:31003/$1
chmod 777 $file_name
mv -f $file_name /home/docker/volumes/kodexplorer/_data/data/Group/public/home/数据仓库/docker_image/
echo "https://server.aiknown.cn:31018/file_server/docker_image/$file_name"