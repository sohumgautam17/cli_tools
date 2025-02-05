# Install Conda for Linux 
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh

conda create --name <enter env name> python=3.9

conda activate <env_name>

# For regular env

python -m venv {enter env name}

source {env name}/bin/activate}
