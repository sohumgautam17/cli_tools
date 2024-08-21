# create ssh key
ssh-keygen -t ed25519 -C "your_email@example.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

# Go to github and add ssh key 
ssh -T git@github.com

# Update the Remote URL to Use SSH:
git remote set-url origin git@github.com:username/repository.git

