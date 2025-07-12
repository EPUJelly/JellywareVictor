# victor

Welcome to `victor`. This is the home of the Anki Vector robot's source code. Original README: [README-orig.md](/README-orig.md)

Check the [wiki](https://github.com/kercre123/victor/wiki) for more information about the leak, what we can do with this, and general Vector info.

## Changes

- The wiki includes a list of changes I made: [Changes I Made](https://github.com/kercre123/victor/wiki/Changes-I-Made)

## Building (x86_64/arm64 Linux)

 - Prereqs: Make sure you have `docker` and `git` installed.

1. Clone the repo and cd into it:

```
cd ~
git clone --recurse-submodules https://github.com/os-vector/wire-os-victor
cd wire-os-victor
```

2. Make sure you can run Docker as a normal user. This will probably involve:

```
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
sudo chown root:docker /var/run/docker.sock
sudo chmod 660 /var/run/docker.sock
```

3. Run the build script:
```
cd ~/wire-os-victor
./build/build-v.sh
```

3. It should just work! The output will be in `./_build/vicos/Release/`

## Building (ARM64 macOS)

# only works on M1-M4 Macs at the moment, not Intel

 - Prereqs: Make sure you have [brew](https://brew.sh/) installed.
   -  Then: `brew install ccache wget upx`

1. Clone the repo and cd into it:

```
cd ~
git clone --recurse-submodules https://github.com/os-vector/wire-os-victor
cd victor
```

2. Run the build script:
```
cd ~/wire-os-victor
./build/build-v.sh
```

3. It should just work! The output will be in `./_build/vicos/Release/`

## Deploying

1. Echo your robot's IP address to robot_ip.txt (in the root of the victor repo):

```
echo 192.168.1.150 > robot_ip.txt
```

2. Copy your bot's SSH key to a file called `robot_sshkey` in the root of this repo.

3. Run:

```
./build/deploy-d.sh
```
