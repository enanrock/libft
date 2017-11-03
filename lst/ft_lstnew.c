/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/29 13:41:21 by enanrock          #+#    #+#             */
/*   Updated: 2017/10/09 07:15:05 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

t_list	*ft_lstnew(void const *content, size_t content_size)
{
	t_list	*result;

	result = (t_list *)malloc(sizeof(t_list));
	if (result == NULL)
		return (NULL);
	if (content == NULL)
	{
		result->content = NULL;
		result->content_size = 0;
	}
	else
	{
		result->content = (void *)malloc(content_size);
		if (result->content == NULL)
			result->content_size = 0;
		else
		{
			ft_memmove(result->content, content, content_size);
			result->content_size = content_size;
		}
	}
	result->next = NULL;
	return (result);
}
