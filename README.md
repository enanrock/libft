libft
=====

Subject
-------

An Ecole 42's projet : [libft](https://cdn.intra.42.fr/pdf/pdf/775/libft.en.pdf) but i to change this rule `All those files must be at the root of your repository`, because i think it's better. `(ft = forty-two)`

Norm
----

This is the 42's norm (the right way of writting codes) : https://cdn.intra.42.fr/pdf/pdf/1065/norme.en.pdf

How to use Make
---------------

You can type in your shell : `Make`, `Make clean`, `Make fclean`(= full clean) to compile the librabry

if you type `Make where_is_malloc`, you have this useful messeage :
```
By the way, please use ft_memdel(&ap); instead of free(ap);

number of      file            where is it
allocation
1         : ft_memalloc.c      (result)

1         : ft_strnew.c        (result)
1         : ft_strdup.c        (result)
1         : ft_strsub.c        (result)
1         : ft_strjoin.c       (result)
1         : ft_strnnjoin.c     (result)
1         : ft_strtrim.c       (result)
1         : ft_strmap.c        (result)
1         : ft_strmapi.c       (result)
1 + N     : ft_strsplit.c      (result & result[i])

1         : ft_itoa.c          (result)
1         : ft_uitoa.c         (result)
1         : ft_imawtoa.c       (result)
1         : ft_uimawtoa_base.c (result)

2         : ft_loopnew.c       (result & result->content)
2         : ft_lstnew.c        (result & result->content)
2         : ft_lstdupone.c     (use ft_lstnew.c)
```
