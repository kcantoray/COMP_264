/* COMP 264 - HW4 */

#include <stdio.h>

long fib(long n);

int main(void)
{
    long inputs[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    long expected[] = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55};
    int number_of_tests = 10;
    int i;
    int failures = 0;

    for (i = 0; i < number_of_tests; i++) {
        long result = fib(inputs[i]);

        printf("fib(%ld) = %ld", inputs[i], result);

        if (result == expected[i]) {
            printf(" - PASS\n");
        } else {
            printf(" - FAIL (expected %ld)\n", expected[i]);
            failures++;
        }
    }

    if (failures == 0) {
        printf("All tests passed.\n");
    } else {
        printf("%d test(s) failed.\n", failures);
    }

    return failures;
}
