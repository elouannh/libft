/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ehosta <ehosta@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/16 18:11:30 by ehosta            #+#    #+#             */
/*   Updated: 2024/12/16 18:11:30 by ehosta           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	parse_format(char *str, va_list args)
{
	int printed_chars;
	int	i;

	printed_chars = 0;
	i = 0;
	while (str[i])
	{
		if (str[i] == "%i")
		{
			printed_chars = ft_format_flag();
		}
	}
}

int	ft_printf(const char *format, ...)
{
	va_list	args;
	int		return_value;

	if (!format || !*format)
		return (-1);
	va_start(args, format);
	return_value = parse_format(format, args);
	va_end(args);
	return (return_value);
}
