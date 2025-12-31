# Minecraft Server Setup

This repository contains the setup for setting up a minecraft server without having to install your own version of Java. This setup only supports vanilla minecraft for the time being.

## Requirements:
- [Docker](https://www.docker.com/) that can support using linux containers.
- Linux, Mac or [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
- [Make](https://www.gnu.org/software/make/manual/make.html)

## Steps:

1. Download the `server.jar` from either [Mojang](https://www.minecraft.net/en-us/download/server) or [MCVersions](https://mcversions.net/) and place it in the `out` folder in this directory.

2. Read [Minecraft's EULA](https://aka.ms/MinecraftEULA) and if you agree, run the convenient `make agree-eula` command.

3. Run the command `make server [MC version]`, replacing [MC version] with your minecraft version to start your new minecraft server instance.

## Notes
- Only stable releases are currently supported.
- MC versions should be of the form `X.X.X` with `X` denoting a number.
- The server files will be populated in the `out` folder so that 
- Clean up process: `make down`
- `make server` is only needed when server version changes or initial setup.
- You can just `make up` from then on when you see that the `.env` file information agrees with your server version.
- If you want to reset the world, you can run `make clean-world` after exiting `make up`.
- It is a good idea to backup the `out/world` data incase you want to reload the world.
