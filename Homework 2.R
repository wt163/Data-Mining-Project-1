scatter <- function(x,y)
{
  plot(x,y,main="Raw Scatter Plot")
}

binplot <- function(x,y,res,raw="False") {
  nc <- res
  nr <- res
  if (raw == "TRUE"){
    scatter(x,y)
  }
  zx = c(1:nr,rep(1,nc),1+trunc( nr*(x- min(x))/(max(x)-min(x)) ))
  zx[zx>nr] = nr
  zy = c(rep(1,nr),1:nc,1+trunc( nc*(y- min(y))/(max(y)-min(y)) ))
  zy[zy>nc] = nc
  z = table(zx,zy); z[,1]=z[,1]-1; z[1,]=z[1,]-1;
  image(z=t(z),x=seq(length=nr+1,from=min(x),to=max(x)),
        y= seq(length=nc+1,from=min(y),to=max(y)),
        xlab="",ylab="", col=topo.colors(100),main="binned scatter plot")
}


x = rnorm(10000)
y = rnorm(10000)

resolution = 100

binplot(x,y,resolution,"TRUE")
binplot(x,y,resolution)

scatter(x,y)




#this package needed for 3d plots:
install.packages("plot3D")
library(plot3D)

TDbinplot <- function (x,y,res,raw="FALSE",bin="FLASE"){
  if (raw == "TRUE") {
    scatter(x,y)
  }
  if (bin == "TRUE") {
    binplot(x,y,res,"FALSE")
  }
  xc <- cut(x,res)
  yc <- cut(y,res)
  z = table(xc,yc)
  hist3D(z=z, border="black",main="3D binned scatter plot")
}

TDbinplot(x,y,25)

#Changes made to original function
#added a function that plots the raw scatter plot, with a title
#added a title to the binned scatter plot
#adding in option to output raw scatter plot (true by default)
#removing seperate x and y resolutions
#added a function that produces a 3d bin plot