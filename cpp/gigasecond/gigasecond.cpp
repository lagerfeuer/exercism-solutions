#include "gigasecond.h"

using boost::posix_time::seconds;

ptime gigasecond::advance(ptime time) {
  return time + seconds(1000000000);
}
