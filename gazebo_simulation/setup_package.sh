echo "Installing enssential packages...."
sudo apt-get update
sudo apt-get -y install --no-install-recommends \
ros-melodic-ros-control \
ros-melodic-ros-controllers \
ros-melodic-gazebo-ros \
ros-melodic-gazebo-ros-control \
ros-melodic-joint-state-publisher-gui \
ros-melodic-teleop-twist-keyboard \
ros-melodic-move-base \
ros-melodic-robot-pose-ekf \
ros-melodic-gmapping \
ros-melodic-map-server \
ros-melodic-amcl \
ros-melodic-global-planner \
ros-melodic-teb-local-planner \
ros-melodic-cartographer-node
echo "Now dowloading gazebo models...."

# using gpproxy.com accelerate download
git clone https://ghproxy.com/https://github.com/osrf/gazebo_models ~/.gazebo/models