/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printptr_fd.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ehosta <ehosta@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/17 13:42:38 by ehosta            #+#    #+#             */
/*   Updated: 2024/12/17 13:42:38 by ehosta           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_fd.h"

int	ft_putptr_fd(unsigned long long n, int fd)
{
	int	putnbr_result;

	if (n == 0)
	{
		if (ft_putstr_fd("(nil)", fd) == -1)
			return (-1);
		return (5);
	}
	if (ft_putstr_fd("0x", fd) == -1)
		return (-1);
	putnbr_result = ft_putnbr_base_fd(n, "0123456789abcdef", fd);
	if (putnbr_result == -1)
		return (-1);
	return (2 + putnbr_result);
}
