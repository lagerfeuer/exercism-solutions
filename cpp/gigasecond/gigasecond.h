#ifndef GIGASECOND_H
#define GIGASECOND_H
#include "boost/date_time/posix_time/posix_time.hpp"

using boost::posix_time::ptime;

namespace gigasecond {
  ptime advance(ptime time);
}

#endif /* GIGASECOND_H */
