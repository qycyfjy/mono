#include "lib.h"

#include <gtest/gtest.h>

TEST(StrCat, ConcatTwoString) {
    EXPECT_EQ( "1234abcd", concat_str("1234", "abcd") );
}
