/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdupone.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enanrock <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/14 14:26:26 by enanrock          #+#    #+#             */
/*   Updated: 2017/10/14 14:29:00 by enanrock         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstdupone(t_list *elem)
{
	t_list	*result;

	result = ft_lstnew(elem->content, elem->content_size);
	return (result);
}
