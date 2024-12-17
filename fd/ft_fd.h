/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_fd.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ehosta <ehosta@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/04 11:43:25 by ehosta            #+#    #+#             */
/*   Updated: 2024/12/04 11:43:25 by ehosta           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_FD_H
# define FT_FD_H

# include <unistd.h>
# include "../str/ft_str.h"

/**
 * Writes a character (type char -128 to 127) in the given file descriptor.
 * @return Returns 1 if the character has been written, -1 if there is an error.
 */
int	ft_putchar_fd(char c, int fd);
/**
 * Writes a sequence of characters (a string) and adds a newline at the end of
 * it in the given file descriptor. If an error occurs while the function
 * writes each character, the function exits.
 * @return Returns the total length of the written string (including the '\n')
 * or -1 if an error occurs.
 */
int	ft_putendl_fd(char *s, int fd);
int	ft_putnbr_base_fd(long double n, char *base, int fd);
int	ft_putnbr_fd(int n, int fd);
int	ft_putptr_fd(unsigned long long n, int fd);
int	ft_putstr_fd(char *s, int fd);

#endif
