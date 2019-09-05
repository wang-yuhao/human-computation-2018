# Primary Report of Yuhao
## Incentivization Models
In the past few decades, with the rapid development of the world economy, the global tourism industry has become increasingly prosperous.But at the same time Modeling and recognizing landmarks at world-scale become a very important yet challenging task. Besides we don’t have readily available datasets for global landmarks. Getting reliable visual models for landmarks will also cause some challenges for us, the search efficiency of a large scale system now is another  problems. In order to solve these difficulties, today use ESP Game actually  is the most suitable methods. And in terms of online map man can easily explore artwork around his location, Of course that is not the only function,the users can also implement many other options by this Application.

### ESP Game
The most important parts of our program based on ESP Game. ESP game is a two player random matching game. In this game each player are randomly paired with another user whose identity you will never don’t know.You can both only see the same photograph of a landmark on your own computer at the same time, then you have too guess what your partner is inputting for this landmark. If you type the more same words as you partner or former player, and you will gain more points. So the player have to find more consistent or obvious words by  this image, if they want get more points to defeat their partner. Through this way of human computation the designer can in a brief period collect a lot of label datum for these landmark, besides this way can also save a lot of economic and human costs.

### Explore artwork around your location
The second key point ,the Application have to connect to a Map’s API,  on the one hand by this way the player can explore for the Landmark on the map, on the other hand  you will get notified if you are close to some tagged artwork.The other options include the control of the zoom level,the higher the zoom level, the higher the quality of this location tag.And if it is a very low tagging time, the system will automatic suggest a bot for player.

### Data processing
Definitely the data of the players must be preprocessed, in order to prevent the collection of wrong data go into the core data pool.The validation process consist of two steps, instant validation and delayed validation.Whenever the system find a new location tag is added to a picture, the DBSCAN clustering algorithm must be executed immediately, then the outlier will be detected by clustering algorithm.The resulting clusters have a density value which is used as a threshold to determine its validity.occasionally the system will add already tagged pictures as a task to check on users,whether they malicious input some data.In addition, the time of the player to complete tasks will also be measured,and so that irregularities data are filtered by the system.




 


## Functionality as seen by a stakeholder (0.5 page - 1 page)
### Designer
By this game the designer will gain a lot of label datum for these landmark in a brief period. If there is not use this human computation system to collect the information, only by people or computer, that would be a huge amount of work.Naturally It would not be completed in a short  time, besides would give the high human and economic burden to designer. Because the system would store a large of information about artworks and tag datasets. Not only is a huge amount of storage space required, but the data rates for the communication ofcontinuous media are also significant. 

### Maintainer
With more and more users, new landmarks and information will be everyday added into databases constantly.There is no doubt that will have more and more problems, and the maintainer have to solve all kinds of possible failures anywhere and anytime, and work hard to keep the system always stable.

### User
In the meanwhile the system add to each landmark many suitable tag information.This datasets in the future also would be used in many fields,to help more people get more information about their strange landmarks in tour.on the other hand after Tagging for landmarks, everyone can easily on Internet search these artworks and disguidish different landmarks.This game is also at the same time advertising a traditional culture about artworks, through playing the game users will get more and more knowledge in  landmarks and artworks fields.Because if players want to get more points, they must have prepared enough knowledges in these field before the game.





















## Incentivization concept (0.5 page)
### Extrinsic motivation
First we divide our incentivization model into two parts, the first part is extrinsic motivation. The player in this system through many times play and  contribution can receive indirectly feedback for the job, For example: they can brag  to their friends with their points and honor in this game. Besides  the import thing is the action significance by external values, man can get not only the immediate validation, but also delayed validation. Immediate validation is the instant point rewards, and Delayed validation is notifications about results show that user actions are not pointless. 

### intrinsic motivation
Then the second part is intrinsic motivation, of course in this way  the best motivation is the enjoyment based motivation, first Users of Artigo are likely to identify themselves as “art nerds”.  next they also can gain direct feedback from the job, immediate sense of contribution,because they know that their data will be useful in future validation. At the same time this game may help many people pass time, when they wait for the bus or subway. On the other hand, we will set a Community for all players , We want to look into community building design to improve motivation here, maybe transitioning some social motivation aspects into deeper community based motivation .

### Ensure long-term participation
We both agree that set community for all players is the best way to ensure users long-term participation. And we believe that delayed validate for Notification about successful, is also can make people remember this game longer. Adding value to the point reward system by ranking the users (maybe with special badges like “art explorer”) is also a good  idea. 
filter when you have been at a landmark depicting the artwork and your selfie.Afterwards  we should pay attention to   recommend this game for inherently interested people,for example like architecture or art students or workers. And we have to introduce more about the  worth of the system, that will help a worthy cause, this for us is not only a game, but also a very import contribution to the society.



<!-- 
### Human contribution to the system (0.5 page) 
*Yuhao*
-->
## Human contribution to the system
Today  Human computation as a more social point of “smartness” has emerged. On the basis of this perspective, we use both digital and human elements provide intelligence to our system. In consequence people are seen not only as participants ,but also being actively engaged in our system. and as a result they also can contribute their considerable knowledge and expertise to system.
### Gather Information
First the most import work of human intelligence is collect a large of informations to the System. As more and more user participate in our system, we can collect a huge amount of various data.These data not only involve different artworks and landmarks, but also come from different country different times.
### Analyze Data
secondly, people can help us analyze fuzzy or incomplete data. The result from the people’s analysation for artworks  in most cases are more accurate. Furthermore computers also can not analyze some fuzzy and incomplete data effectively yet, Especially the information analysis on the picture is still a very formidable challenge for today’s technology. In this Field the human intelligence makes up for the deficiency of computer effectively.
### Creation and Discovery
The computer can not create the artworks from our real life, but we can. Computer only  is able to use already know information. However we can from the beautiful nature and life create elegant artworks, and then we can add this information into system.Therefore via human computation the function of the system has been improved greatly.
