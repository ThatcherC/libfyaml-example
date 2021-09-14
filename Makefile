TARGET = fy-version
LIBS = -lm
CFLAGS = -std=gnu99 -Wall

# add flags for libfyaml, as recommended by libfyaml docs
CFLAGS += `pkg-config --cflags libfyaml`
LIBS   += `pkg-config --libs libfyaml`

.PHONY: default clean

default: fy-version.c
	gcc $(CFLAGS) $< -o $(TARGET) $(LIBS)

clean:
	-rm $(TARGET)
