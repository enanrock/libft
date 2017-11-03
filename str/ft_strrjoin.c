/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrjoin.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/22 15:51:26 by enanrock          #+#    #+#             */
/*   Updated: 2017/10/19 12:46:41 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

char	*ft_strrjoin(char *s1, char const *s2)
{
	char	*result;

	if ((s1 != NULL) && (s2 != NULL))
	{
		result = ft_strjoin(s1, s2);
		ft_strdel(&s1);
		return (result);
	}
	else
	{
		ft_strdel(&s1);
		return (NULL);
	}
}
