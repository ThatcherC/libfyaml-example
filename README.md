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

To use the Docker environment, first run
```
$ docker build -t libfyaml .
```
to set up the Docker instance. This step will install dependencies and build `libfyaml`.

After that, the test program can built with `make` in the Docker environment. Run
```
$ docker run -it libfyaml
```

to enter the Docker env, then in the new shell, run
```
make
./fy-version
```

and you should see the version number of the `libfyaml` library.
