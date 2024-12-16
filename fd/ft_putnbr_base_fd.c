/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_base_fd.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ehosta <ehosta@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/16 19:27:13 by ehosta            #+#    #+#             */
/*   Updated: 2024/12/16 19:27:13 by ehosta           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_fd.h"

int	ft_putnbr_base_fd(double long n, char *base, int fd)
{
	int		recur_result;
	size_t	baselen;

	if (n < 0)
	{
		if (ft_putchar_fd('-', fd) == -1)
			return (-1);
		recur_result = ft_putnbr_base_fd(-n, base, fd);
		if (recur_result == -1)
			return (-1);
		return (1 + recur_result);
	}
	baselen = ft_strlen(base);
	if (n >= baselen)
	{
		recur_result = ft_putnbr_base_fd(n / baselen, base, fd);
		if (recur_result == -1)
			return (-1);
		return (recur_result + ft_putchar_fd(((int)n % baselen) + '0', fd));
	}
	return (ft_putchar_fd(n + '0', fd));
}
