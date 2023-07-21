#!/bin/bash

conf_dir=/data/gitea/data/conf
mkdir -p ${conf_dir}

# 修改目录权限，新目录必须在1号进程开始后才能修改属性
chown -R git:git /data

mv /tmp/app.ini ${conf_dir}/app.ini
su - git -c "GITEA_WORK_DIR=/data/gitea GITEA_CUSTOM=/data/gitea /app/gitea web --config ${conf_dir}/app.ini"