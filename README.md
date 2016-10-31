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
be installing via `apt` on Linux.

### Usage

```
swig -c++ -d -d2 -o LeapD.cpp -wrapperlibrary LeapD Leap.i
clang++ LeapD.cpp libLeap.dylib -shared -o libLeapD.dylib
dmd Leap.d Leap_im.d -run Sample.d
```
