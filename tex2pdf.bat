set fileName=%~n1

set dockerTexTemp01=%CD:\=/%
set dockerTexTemp02=%dockerTexTemp01:A:=a%
set dockerTexTemp03=%dockerTexTemp02:B:=b%
set dockerTexTemp04=%dockerTexTemp03:C:=c%
set dockerTexTemp05=%dockerTexTemp04:D:=d%
set dockerTexTemp06=%dockerTexTemp05:E:=e%
set dockerTexTemp07=%dockerTexTemp06:F:=f%
set dockerTexTemp08=%dockerTexTemp07:G:=g%
set dockerTexTemp09=%dockerTexTemp08:H:=h%
set dockerTexTemp10=%dockerTexTemp09:I:=i%
set dockerTexTemp11=%dockerTexTemp10:J:=j%
set dockerTexTemp12=%dockerTexTemp11:K:=k%
set dockerTexTemp13=%dockerTexTemp12:L:=l%
set dockerTexTemp14=%dockerTexTemp13:M:=m%
set dockerTexTemp15=%dockerTexTemp14:N:=n%
set dockerTexTemp16=%dockerTexTemp15:O:=o%
set dockerTexTemp17=%dockerTexTemp16:P:=p%
set dockerTexTemp18=%dockerTexTemp17:Q:=q%
set dockerTexTemp19=%dockerTexTemp18:R:=r%
set dockerTexTemp20=%dockerTexTemp19:S:=s%
set dockerTexTemp21=%dockerTexTemp20:T:=t%
set dockerTexTemp22=%dockerTexTemp21:U:=u%
set dockerTexTemp23=%dockerTexTemp22:V:=v%
set dockerTexTemp24=%dockerTexTemp23:W:=w%
set dockerTexTemp25=%dockerTexTemp24:X:=x%
set dockerTexTemp26=%dockerTexTemp25:Y:=y%
set fixedCd=%dockerTexTemp26:Z:=z%

docker run --rm -v //%fixedCd%://latex sititou70/latex:v2.0.0 latexmk -pdfdvi %fileName%

del %fileName%.aux
del %fileName%.dvi
del %fileName%.synctex.gz
del %fileName%.log
del %fileName%.bbl
del %fileName%.blg

