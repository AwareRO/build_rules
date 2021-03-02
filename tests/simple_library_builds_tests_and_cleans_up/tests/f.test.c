#include <check.h>
#include "f.h"
#include "g.h"

START_TEST(f_returns_0)
{
	ck_assert_msg(f() == 0, "f returned not 0");
}

START_TEST(g_returns_0)
{
	ck_assert_msg(g() == 0, "g returned not 0");
}


int main()
{
	TCase *test = tcase_create("f_returns_0");
	tcase_add_test(test, f_returns_0);
	Suite *tests = suite_create("f.tests");
	suite_add_tcase(tests, test);
	SRunner *runner = srunner_create(tests);
	srunner_run_all(runner, CK_NORMAL);
	int fails = srunner_ntests_failed(runner);
	srunner_free(runner);
	return fails != 0;
}
