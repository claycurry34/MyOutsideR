mybar=function(tab, acc)
{
  df = data.frame(tab)
  a = df[df[1]=="no" & df[2]=="FALSE",3]
  b = df[df[1]=="no" & df[2]=="TRUE",3]
  c = df[df[1]=="yes" & df[2]=="FALSE",3]
  d = df[df[1]=="yes" & df[2]=="TRUE",3]
  AC = accu(a,b,c,d)
  DR = detect(b,d)
  FAR = falarm(a,c)
  PR = prec(c, d)

  c(round(AC, acc), round(DR,acc), round(FAR, acc), round(PR, acc))
}

accu=function(a,b,c,d)
{
  (a+d)/(a+b+c+d)
}

detect=function(b,d)
{
  d/(b+d)
}

falarm=function(a,c)
{
  c/(a+c)
}

prec=function(c,d)
{
  d/(c+d)
}
