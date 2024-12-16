#include "libft.h"
#include <stdio.h>
#include <limits.h>

int main(int argc, char **argv) {
	(void)argc;
	if (argv[1][0] == '1') {
		double long born = INT_MAX;
		for (double long i = -born; i < born; i++) {
			char *istr = ft_itoa((int)i);
			int put_result = ft_putnbr_fd((int)i, 1);
			int istrlen = ft_strlen(istr);
			if (put_result != istrlen) {
				printf("\n%Lf : %d | %d\n", i, put_result, istrlen);
				break;
			}
			free(istr);
			printf("\n");
		}
	} else {
		double long i = -2147483647;
		char *istr = ft_itoa((int)i);
		int put_result = ft_putnbr_fd((int)i, 1);
		int istrlen = ft_strlen(istr);
		printf("\n%Lf : %d | %d\n", i, put_result, istrlen);
		free(istr);
		printf("\n");
	}
}
