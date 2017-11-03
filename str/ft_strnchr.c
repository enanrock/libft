/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/01/03 18:27:43 by enanrock          #+#    #+#             */
/*   Updated: 2017/01/23 13:40:26 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

char	*ft_strnchr(const char *s, int c, size_t len)
{
	size_t	i;

	i = 0;
	while ((i < len) && (s[i] != (char)c) && (s[i] != '\0'))
		i++;
	if ((i < len) && (s[i] == (char)c))
		return ((char *)(s + i));
	else
		return (NULL);
}
