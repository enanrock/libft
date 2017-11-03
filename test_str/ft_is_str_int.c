/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_str_int.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/14 11:02:37 by enanrock          #+#    #+#             */
/*   Updated: 2017/10/14 11:36:11 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include "libft.h"

int		ft_is_str_int(char *str)
{
	char	*cpy;
	size_t	i_cpy;
	size_t	i_str;
	char	c;

	if ((cpy = ft_itoa(ft_atoi(str))) == NULL)
		return (-1);
	i_str = 0;
	while (str[i_str] != '\0')
		i_str++;
	i_cpy = 0;
	while (cpy[i_cpy] != '\0')
		i_cpy++;
	while ((i_str > 0) && (i_cpy > 0) && (str[i_str] == cpy[i_cpy]))
	{
		i_str--;
		i_cpy--;
	}
	c = cpy[i_cpy];
	ft_strdel(&cpy);
	while ((i_str > 0) && (str[i_str] == '0'))
		i_str--;
	if ((i_cpy == 0) && (str[i_str] == c))
		return (1);
	return (0);
}
