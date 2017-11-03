/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_loopdel.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/29 14:31:18 by enanrock          #+#    #+#             */
/*   Updated: 2017/09/25 14:32:53 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

void	ft_loopdel(t_loop **aloop, void (*del)(void *, size_t))
{
	if (aloop != NULL)
		while (*aloop != NULL)
			ft_loopdelhead(aloop, del);
}
