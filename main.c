#include <stdio.h>
#include <stdlib.h>
#include "stack.h"
//#include "queue.h"
#include "da.h"
#include "cda.h"
#include "integer.h"
#include "string.h"


int
main(void)
{
    STACK *items = newSTACK();
    setSTACKfree(items,freeINTEGER);

    fprintf(stdout,"yoyjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjoyoy\n\n")
    freeSTACK(items);
    return 0;
}