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

int	ft_putchar_fd(char c, int fd);
int	ft_putendl_fd(char *s, int fd);
int	ft_putnbr_fd(int n, int fd);
int	ft_putstr_fd(char *s, int fd);

#endif
