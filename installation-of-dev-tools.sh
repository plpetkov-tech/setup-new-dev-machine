#!/usr/bin/env bash
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-20.3.0/graalvm-ce-java11-linux-amd64-20.3.0.tar.gz;
tar -xzf graalvm*.tar.gz;
sudo cp graalvm* /lib/jvm/graalvm
rm graalvm-ce-java11-linux-amd64-20.3.0.tar.gz;
echo "export PATH=/lib/jvm/graalvm/bin:$PATH" >> ~/.zshrc;
echo "export JAVA_HOME=/lib/jvm/graalvm/" >> ~/.zshrc;
java --version;
node --version;
which java;
which node;