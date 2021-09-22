# `libfyaml` Example Install and Usage

An minimal example program and Makefile that uses the `libfyaml` C library. See
the [libyaml page](https://github.com/pantoniou/libfyaml/) for detailed 
information and install instructions.

The test program `fy-version.c` included here is taken from the 
[`libfyaml` README](https://github.com/pantoniou/libfyaml/blob/master/README.md)
and is licensed to [Pantelis Antoniou](mailto:pantelis.antoniou@konsulko.com) 
under the MIT license.

### Docker
A Dockerfile is included to show the construction of a minimal environment required
to compile a program with `libfyaml`. The Dockerfile installs all `libfyaml` 
dependencies, downloads the `libfyaml` source, compiles the library, and installs it. 
The library is then available for linking with `gcc`.

To use the Docker environment, clone this repo and run a `docker build`:
```
git clone https://github.com/ThatcherC/libfyaml-example.git
cd libfyaml-example
docker build -t libfyaml .
```
to set up the Docker instance. This step will install dependencies and build `libfyaml`.

After that, the test program can built with `make` in the Docker environment. Run
```
docker run -it libfyaml
```

to enter the Docker env, then in the new shell, run
```
make
./fy-version
```

and you should see the version number of the `libfyaml` library.

### Non-Docker

If you'd rather install `libfyaml` on your computer rather than in a Docker
environment, the docs recommend these steps, which are also encoded in the Dockerfile:

Install dependencies:
```
sudo apt install -y gcc autoconf automake libtool git make libltdl-dev pkg-config
```

Build and install library:
```
git clone https://github.com/pantoniou/libfyaml.git
cd libfyaml
./bootstrap.sh
./configure
make                # build libfyaml library
sudo make install   # install library to system directories
sudo ldconfig -v    # reload libraries
```
To verify successful installation, clone this repo and make and run the test program:
```
git clone https://github.com/ThatcherC/libfyaml-example.git
cd libfyaml-example
make
./fy-version
```
