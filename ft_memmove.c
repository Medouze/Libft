/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mlavergn <mlavergn@s19.be>                 +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/03 15:40:45 by mlavergn          #+#    #+#             */
/*   Updated: 2024/08/03 16:01:45 by mlavergn         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	size_t	i;

	if (((unsigned char *)dest) < ((unsigned const char *)src))
	{
		i = 0;
		while (i < n)
		{
			((unsigned char *)dest)[i] = ((unsigned const char *)src)[i];
			i++;
		}
	}
	else
	{
		i = n - 1;
		while (i > 0)
		{
			((unsigned char *)dest)[i] = ((unsigned const char *)src)[i];
			i--;
		}
		((unsigned char *)dest)[i] = ((unsigned const char *)src)[i];
	}
	return (dest);
}
