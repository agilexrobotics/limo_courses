## 1. 教程环境使用简介

**如果您想直接在本地电脑上进行仿真，请直接见第二小节**

为了能让您的仿真环境与教程一致，我们推荐您使用 Docker+VSCode 的方式进行学习，如果您不了解这种方式，可以参考以下文章：
[Docker 配合 VSC 开发最佳实践](https://anthonysun256.github.io/docker-with-vsc_best-practice/)

 [我的 ROS 开发环境](https://anthonysun256.github.io/my_ros_env/)

**注意**：本镜像默认打开了显卡加速（不用显卡 Gazegbo 和 Rviz 会非常卡），需要 `nvidia-docker2` 支持，安装方法见 在 [Docker 中使用 Nidia 显卡](https://anthonysun256.github.io/docker_with_nvidia/)

如果您不想使用显卡，请注释掉 `.devcontainer/devcontainer.json` 中 `"--gups" "all" ` 这一行

1. 按照 VSCode Remote-container 插件
2. 使用 VSCode 在容器中打开
3. 运行目录下的 `setup_package.sh` 
4. 按照课程进行复现

## 2. 配置必要功能包

运行教程目录下的 `setup_package.sh` 脚本可以自动安装所需功能包
