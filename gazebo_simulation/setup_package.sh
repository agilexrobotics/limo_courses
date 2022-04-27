echo -e  "\e[32mInstalling enssential packages....\e[0m"
sudo apt-get update
sudo apt-get -y install --no-install-recommends \
ros-melodic-ros-control \
ros-melodic-ros-controllers \
ros-melodic-gazebo-ros \
ros-melodic-gazebo-ros-control \
ros-melodic-ros-controllers
ros-melodic-joint-state-publisher-gui \
ros-melodic-teleop-twist-keyboard \
ros-melodic-joint-state-controller \
ros-melodic-move-base \
ros-melodic-robot-pose-ekf \
ros-melodic-gmapping \
ros-melodic-map-server \
ros-melodic-amcl \
ros-melodic-global-planner \
ros-melodic-teb-local-planner \sudo apt-get update
sudo apt-get -y install --no-install-recommends \
ros-melodic-ros-control \
ros-melodic-ros-controllers \
ros-melodic-gazebo-ros \
ros-melodic-gazebo-ros-control \
ros-melodic-ros-controllers
ros-melodic-joint-state-publisher-gui \
ros-melodic-teleop-twist-keyboard \
ros-melodic-joint-state-controller \
ros-melodic-move-base \
ros-melodic-robot-pose-ekf \
ros-melodic-gmapping \
ros-melodic-map-server \
ros-melodic-amcl \
ros-melodic-global-planner \
ros-melodic-teb-local-planner \
ros-melodic-cartographer-node \
python-pip

# using gpproxy.com accelerate download
read -n1 -p "Do you want to download gazebo models? [y/n]" input
echo ""
if [ $input = "y" ];then
    echo -e "\e[32mNow dowloading gazebo models....\e[0m"
    git clone https://ghproxy.com/https://github.com/osrf/gazebo_models ~/.gazebo/models
fi

read -n1 -p "Do you want to install rosdepc and update rosdep database? [y/n]" input
echo ""
if [ $input = "y" ];then
    echo -e "\e[32mNow update rosdep database using rosdepc....\e[0m"
    sudo pip install rosdepc
    sudo rosdepc init
    rosdepc update
    rosdepc install --from-paths src --ignore-src -r -y
fi
