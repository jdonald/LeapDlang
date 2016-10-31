# D language binding for Leap Motion

From the April 2014 Leap Motion V2 hackathon. Pitched
by Walter Gray.

### Prerequisites

  - [Leap Motion V2 SDK](https://developer.leapmotion.com/v2) or newer
  - SWIG 3.0.0 or newer
  - D compiler
  - A C++ compiler such as g++ or clang++ that comes with Xcode

On OS X, one can install the SWIG and D prerequisites via MacPorts:

```
sudo port install swig swig-d dmd
```

The installation steps for HomeBrew are likely similar, as would
be installing via `apt` on Linux. Using this under Visual Studio
is possible but likely more involved.

### Usage

```
swig -c++ -d -d2 -o LeapD.cpp -wrapperlibrary LeapD Leap.i

clang++ LeapD.cpp libLeap.dylib -shared -o libLeapD.dylib

dmd Leap.d Leap_im.d -run Sample.d
```

If your Leap Motion device is streaming frames, you should
see some valid frame data, e.g.:

```
frame id = -1
frame id = 90364
frame id = 90367
frame id = 90370
...
```

In case you have trouble with SWIG or clang, the intermediate
source files and binaries (at least for Xcode) are included
here so you may skip to running `dmd` on OS X.

### License

Sources files obtained from the Leap Motion SDK such as `Leap.i`
are licensed under the Leap Motion SDK Agreement as indicated
in their header comments. Unless otherwise specified, other
content found here defaults to the Apache license as described
in the `LICENSE` file.
