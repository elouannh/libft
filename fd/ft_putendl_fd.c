/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: elouannh <ehosta@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/06 21:04:39 by elouannh          #+#    #+#             */
/*   Updated: 2024/11/06 21:04:39 by elouannh         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "ft_fd.h"

int	ft_putendl_fd(char *s, int fd)
{
	int	putstr_result;
	int	newline_result;

	putstr_result = ft_putstr_fd(s, fd);
	if (putstr_result == -1)
		return (-1);
	newline_result = ft_putchar_fd('\n', fd);
	if (newline_result == -1)
		return (-1);
	return (putstr_result + newline_result);
}
