import std.stdio;
import Leap;
import core.thread;

void main()
{
    Controller c = new Controller;
    for (int i = 0; i < 10; i += 1) {
        Frame fr = c.frame();
        writeln("frame id = ", fr.id());
        Thread.sleep( dur!("msecs") (100));
    }
}
