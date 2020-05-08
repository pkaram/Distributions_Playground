## Distribution Playground

Shiny App to play around with various distributions. Give sample size and parameter values to review the shape of the distribution

![](screenshot.png)

### To build image execute the following

```
 docker build -t distributions_playground .
```

### To run image after a pull request execute the following

```
docker run -p 80:80 distributions_playground
```


Access app on: 

```
http://localhost 
```
