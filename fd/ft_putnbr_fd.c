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
#include <stdio.h>

int	ft_putnbr_fd(int n, int fd)
{
	return (ft_putnbr_base_fd((int)n, "0123456789", fd));
}
