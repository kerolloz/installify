# Download the latest Neovim release tarball for Linux (x86_64)
curl -LO https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz

# Remove any existing Neovim installation
sudo rm -rf /opt/nvim

# Extract the downloaded tarball to /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Clean up the tarball
rm nvim-linux-x86_64.tar.gz

# Update the PATH in ~/.zshrc to include the Neovim binary
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.zshrc
