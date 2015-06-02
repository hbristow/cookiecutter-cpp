#include <gtest/gtest.h>

TEST({{ cookiecutter.project_name | capitalize }}Test, Contrived) {
    EXPECT_TRUE(true);
}
