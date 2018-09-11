module helloworld_test;

static string hello(string name = "World") {
  return "Hello, " ~ name ~ "!";
}

unittest {
const int allTestsEnabled = 1;

    assert(hello() == "Hello, World!");
static if (allTestsEnabled) {
    assert(hello("Alice") == "Hello, Alice!");
    assert(hello("Bob") == "Hello, Bob!");
    assert(hello("") == "Hello, !");
}

}
