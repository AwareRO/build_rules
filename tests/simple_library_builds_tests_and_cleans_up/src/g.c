#include <stdio.h>
#include "g.h"
#include "f.h"

int g()
{
	printf("g()\n");
	f();
	return 0;
}
