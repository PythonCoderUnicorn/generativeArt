# generativeArt
generative art using trigonometry functions


## blue dots
![dots](./img/bluedots.png)

## green explosion
![explosion](./img/greenexplosion.png)

## gold glitter  x= sin(x)
![glitter](./img/goldglitter.png)

## y = sin(y)
![glitter](./img/glitter2.png)

## fire triangles
```
x= x ^sin(z),
y = sin(y)/x,
col= z
```
![fire](./img/fire-triangles.png)


## star
```
geom_spoke( aes(angle= sin(x), radius= z), show.legend = F)+
geom_spoke( aes(angle= (x)^z, radius= z*y), show.legend = F)+
```
![star](./img/star.png)


