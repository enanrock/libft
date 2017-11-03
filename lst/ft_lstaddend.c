/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstaddend.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/15 13:30:09 by enanrock          #+#    #+#             */
/*   Updated: 2017/10/15 13:58:02 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include "libft.h"

void	ft_lstaddend(t_list **alst, t_list *new)
{
	t_list	**last;

	if (alst != NULL)
	{
		if (*alst == NULL)
			ft_lstadd(alst, new);
		else
		{
			last = alst;
			while (*last != NULL)
				last = &((*last)->next);
			ft_lstadd(last, new);
		}
	}
}
