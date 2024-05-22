ssh-keygen -t ed25519
mv ~/.ssh/id_ed25519 ~/.ssh/personal_key
mv ~/.ssh/id_ed25519.pub ~/.ssh/personal_key.pub
cd ~/.ssh/
echo "Host github.com
        HostName github.com
        User git
        IdentityFile ~/.ssh/personal_key
        IdentitiesOnly yes" >> config
cat ~/.ssh/personal_key.pub
