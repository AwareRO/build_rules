#include <check.h>
#include "g.h"

START_TEST(g_returns_0)
{
	ck_assert_msg(g() == 0, "g returned not 0");
}


int main()
{
	TCase *test = tcase_create("g_returns_0");
	tcase_add_test(test, g_returns_0);
	Suite *tests = suite_create("g.tests");
	suite_add_tcase(tests, test);
	SRunner *runner = srunner_create(tests);
	srunner_run_all(runner, CK_NORMAL);
	int fails = srunner_ntests_failed(runner);
	srunner_free(runner);
	return fails != 0;
}
