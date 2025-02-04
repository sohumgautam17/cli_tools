# create RSA ssh key
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Generate a new Ed25519 key pair
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

#list keys added to agent
ssh-add -l

# verify permissions
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

# SSH into server if you are using OpenSSH (Accept RSA keys
ssh -o PubkeyAcceptedAlgorithms=+ssh-rsa -o HostkeyAlgorithms=+ssh-rsa {insert hostname}.runpod.io -i {path to private ssh key}


# Go to github and add ssh key 
ssh -T git@github.com

# Update the Remote URL to Use SSH:
git remote set-url origin git@github.com:username/repository.git

