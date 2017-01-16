Developing Data Products Week 4 - Shiny Application
========================================================
author: Charles Smith
date: January 15, 2017
autosize: true

Introduction
========================================================

The inspiration for my Shiny Application is the article ["Which Programming Languages Have the Happiest
(and Angriest) Commenters"](https://hackernoon.com/which-programming-languages-have-the-happiest-and-angriest-commenters-ebe91b3852ed#.2339ersmo), by Sara Robinson. My application uses the results of the query she did on the Stack Overflow dataset to show bar charts of the happiest and angriest commenters.  The application has radio buttons for switching between happiest and angriest commenters.  Of course, R programmers are the happiest.

The code and data for my application are in [my github repo](https://github.com/chuckxx/ShinyHappy)

The application requires the following libraries:


```r
library(shiny)
library(ggplot2)
```
The Data for the Happiest Commenters
========================================================

|Tag           | PercentHappy|Abbr    |
|:-------------|------------:|:-------|
|R             |        20.18|R       |
|Ruby on Rails |        17.59|Rails   |
|XML           |        17.44|XML     |
|Ruby          |        16.99|Ruby    |
|CSS           |        16.92|CSS     |
|iPhone        |        16.85|iPhone  |
|Regex         |        16.77|Regex   |
|Swift         |        16.40|Swift   |
|Jquery        |        16.39|Jquery  |
|HTML          |        15.86|HTML    |
|Python        |        15.74|Python  |
|Objective-C   |        15.64|Obj-C   |
|IOS           |        15.53|IOS     |
|AngularJs     |        15.45|Angular |
|Javascript    |        15.38|JS      |

Chart displayed when the user clicks "Show Happiest":
========================================================

```r
ggplot(happyDf,aes(reorder(Abbr,PercentHappy), y = PercentHappy, fill = Tag)) +
        geom_bar(stat = "identity", color = "black") +
        xlab("Tag") + ylab("Percent Happy")
```

![plot of chunk unnamed-chunk-3](index-figure/unnamed-chunk-3-1.png)
The Data for the Angriest Commenters
========================================================


|Tag            | PercentAngry|Abbr      |
|:--------------|------------:|:---------|
|Objective-C    |         3.06|Obj-C     |
|C              |         3.00|C         |
|C++            |         2.93|C++       |
|iPhone         |         2.93|iPhone    |
|IOS            |         2.73|IOS       |
|Multithreading |         2.57|Threading |
|Arrays         |         2.51|Arrays    |
|PHP            |         2.51|PHP       |
|Algorithm      |         2.48|Algorithm |
|MySql          |         2.48|MySql     |
|Ajax           |         2.46|Ajax      |
|String         |         2.43|String    |
|Java           |         2.41|Java      |
|Regex          |         2.36|Regex     |
|JSON           |         2.34|JSON      |
|XML            |         2.34|XML       |

Chart displayed when the user clicks "Show Angriest"
========================================================

```r
ggplot(angryDf,aes(reorder(Abbr,PercentAngry), y = PercentAngry, fill = Tag)) +
        geom_bar(stat = "identity", color = "black") + xlab("Tag") + ylab("Percent Angry")
```

![plot of chunk unnamed-chunk-5](index-figure/unnamed-chunk-5-1.png)

