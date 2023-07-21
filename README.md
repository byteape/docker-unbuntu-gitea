# 注意事项

-   dockerfile 是镜像的描述文件，docker-compose 是容器的描述文件，对于容器中挂载的文件夹的操作在 dockerfile 中要放在 ENTRYPOINT 中
-   su - 切换用户和切换用户后要执行的命令的两个行为使用&& 不生效，需要指定-c 一次完成
-   dockerfile 中不常变动的层放在前面，后面改动测试时被修改的层的之前的层不会再执行一遍，节省资源
-   docker composer up --build 会在启动容器的时候先 build 操作
-   构建自有镜像：docker build -t gitea:unbuntu .
-   删除测试产生的空镜像 <none>：docker rmi $(docker images | grep "none" | awk '{print $3}')
-   dockerfile 定义镜像时，不要直接把配置文件拷到被挂载的目录中，先放到自定义的临时目录中，再在 ENTRYPOINT 去操作
