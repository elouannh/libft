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
	if (ft_putstr_fd(s, fd) == -1)
		return (-1);
	return (ft_putchar_fd('\n', fd));
}
