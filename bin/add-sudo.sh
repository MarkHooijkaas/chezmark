echo "$USER  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER
chmod 440 /etc/sudoers.d/$USER