/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: elouannh <ehosta@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/06 21:04:41 by elouannh          #+#    #+#             */
/*   Updated: 2024/11/06 21:04:41 by elouannh         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "ft_fd.h"

int	ft_putnbr_fd(int n, int fd)
{
	if (n <= -2147483648)
		return (ft_putstr_fd("-2147483648", fd));
	if (n < 0)
	{
		if (ft_putchar_fd('-', fd) == -1)
			return (-1);
		n *= -1;
	}
	if (n >= 10)
	{
		if (ft_putnbr_fd(n / 10, fd) == -1)
			return (-1);
		return (ft_putchar_fd(n % 10 + '0', fd));
	}
	return (ft_putchar_fd(n + '0', fd));
}
