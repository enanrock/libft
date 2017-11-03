/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_loopadd.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/29 14:45:20 by enanrock          #+#    #+#             */
/*   Updated: 2017/09/25 14:32:48 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include "libft.h"

void	ft_loopadd(t_loop **old_head, t_loop *new_head)
{
	if (old_head != NULL)
	{
		if ((*old_head) != NULL)
		{
			(*new_head).up = (**old_head).up;
			(*new_head).down = *old_head;
			(*(**old_head).up).down = new_head;
			(**old_head).up = new_head;
		}
		else
		{
			new_head->down = new_head;
			new_head->up = new_head;
		}
		*old_head = new_head;
	}
}
