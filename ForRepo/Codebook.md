# Codebook for the Getting and Cleaning Data Project
Natalia Carrizosa  
October 23, 2016  

## Project Description
This is a project for the Coursera course, "Getting and Cleaning Data".  The goal of the project is to prepare tidy data that can be used for data analysis.

##Study design and data processing

###Collection of the raw data
These data were collected from experiments carried out with a group of 30 volunteers aged 19-48 years.  Each volunteer wore a Samsung Galaxy S II smartphone, which has an embedded accelerometer and gyroscope, on his/her waist.

Each volunteer performed six activities:

1. Walking
2. Walking upstairs
3. Walking downstairs
4. Sitting
5. Standing
6. Laying

The researchers used the data from the smartphone to capture 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  The data were labelled manually based on video recordings.

##Creating the tidy datafile

###Guide to create the tidy data file
To create the tidy data, I took the following steps:

1. Downloaded the data and unzipped it
2. Read into R the relevant files, including the activity labels, the features file, the test and training sets, and the activity and subject codes for each set.
3. Bound the activity and subject codes to the test and the training sets
4. Combined the test and the training sets together
5. Replaced the activity codes with the descriptive activity labels
6. Selected only the relevant variables (means and standard deviations)
7. Created descriptive variable names, creating the first tidy dataset
8. Used the reshape package to create a new dataset with the average of each variable for each activity and each subject, creating the second tidy dataset

Description on how to create the tidy data file (1. download the data, ...)/

###Cleaning of the data
My cleaning script downloads and reads the relevant data into R, creates a tidy dataset with the disaggregated mean and standard deviation variables for each signal, and then creates a second tidy dataet with the average of each variable for each activity and each subject [See this readme document, which describes the code in greater detai]()

##Description of the variables in the tiny_data.txt file

* The dimensions of the dataset are 180 observations of 68 variables
* The 68 variables are listed below



```r
names(tidy_data)
```

```
##  [1] "Subject_ID"                                                     
##  [2] "Activity"                                                       
##  [3] "Accelerometer.Body.SignalTime.Domain.Mean.X.Axis"               
##  [4] "Accelerometer.Body.SignalTime.Domain.Mean.Y.Axis"               
##  [5] "Accelerometer.Body.SignalTime.Domain.Mean.Z.Axis"               
##  [6] "Accelerometer.Body.SignalTime.Domain.Stand.Dev.X.Axis"          
##  [7] "Accelerometer.Body.SignalTime.Domain.Stand.Dev.Y.Axis"          
##  [8] "Accelerometer.Body.SignalTime.Domain.Stand.Dev.Z.Axis"          
##  [9] "Accelerometer.Gravity.SignalTime.Domain.Mean.X.Axis"            
## [10] "Accelerometer.Gravity.SignalTime.Domain.Mean.Y.Axis"            
## [11] "Accelerometer.Gravity.SignalTime.Domain.Mean.Z.Axis"            
## [12] "Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.X.Axis"       
## [13] "Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.Y.Axis"       
## [14] "Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.Z.Axis"       
## [15] "Accelerometer.Body.Jerk.SignalTime.Domain.Mean.X.Axis"          
## [16] "Accelerometer.Body.Jerk.SignalTime.Domain.Mean.Y.Axis"          
## [17] "Accelerometer.Body.Jerk.SignalTime.Domain.Mean.Z.Axis"          
## [18] "Accelerometer.Body.Jerk.SignalTime.Domain.Stand.Dev.X.Axis"     
## [19] "Accelerometer.Body.Jerk.SignalTime.Domain.Stand.Dev.Y.Axis"     
## [20] "Accelerometer.Body.Jerk.SignalTime.Domain.Stand.Dev.Z.Axis"     
## [21] "Gyroscope.Body.SignalTime.Domain.Mean.X.Axis"                   
## [22] "Gyroscope.Body.SignalTime.Domain.Mean.Y.Axis"                   
## [23] "Gyroscope.Body.SignalTime.Domain.Mean.Z.Axis"                   
## [24] "Gyroscope.Body.SignalTime.Domain.Stand.Dev.X.Axis"              
## [25] "Gyroscope.Body.SignalTime.Domain.Stand.Dev.Y.Axis"              
## [26] "Gyroscope.Body.SignalTime.Domain.Stand.Dev.Z.Axis"              
## [27] "Gyroscope.Body.Jerk.SignalTime.Domain.Mean.X.Axis"              
## [28] "Gyroscope.Body.Jerk.SignalTime.Domain.Mean.Y.Axis"              
## [29] "Gyroscope.Body.Jerk.SignalTime.Domain.Mean.Z.Axis"              
## [30] "Gyroscope.Body.Jerk.SignalTime.Domain.Stand.Dev.X.Axis"         
## [31] "Gyroscope.Body.Jerk.SignalTime.Domain.Stand.Dev.Y.Axis"         
## [32] "Gyroscope.Body.Jerk.SignalTime.Domain.Stand.Dev.Z.Axis"         
## [33] "Accelerometer.Body.Signal.MagnitudeTime.Domain.Mean."           
## [34] "Accelerometer.Body.Signal.MagnitudeTime.Domain.Stand.Dev."      
## [35] "Accelerometer.Gravity.Signal.MagnitudeTime.DomainMean."         
## [36] "Accelerometer.Gravity.Signal.MagnitudeTime.DomainStand.Dev."    
## [37] "Accelerometer.Body.Jerk.Signal.MaginitudeTime.Domain.Mean."     
## [38] "Accelerometer.Body.Jerk.Signal.MaginitudeTime.Domain.Stand.Dev."
## [39] "Gyroscope.Body.Signal.MagnitudeTime.Domain.Mean."               
## [40] "Gyroscope.Body.Signal.MagnitudeTime.Domain.Stand.Dev."          
## [41] "Gyroscope.Body.Jerk.Signal.MagnitudeTime.Domain.Mean."          
## [42] "Gyroscope.Body.Jerk.Signal.MagnitudeTime.Domain.Stand.Dev."     
## [43] "Accelerometer.Body.SignalFrequency.Domain.Mean.X.Axis"          
## [44] "Accelerometer.Body.SignalFrequency.Domain.Mean.Y.Axis"          
## [45] "Accelerometer.Body.SignalFrequency.Domain.Mean.Z.Axis"          
## [46] "Accelerometer.Body.SignalFrequency.Domain.Stand.Dev.X.Axis"     
## [47] "Accelerometer.Body.SignalFrequency.Domain.Stand.Dev.Y.Axis"     
## [48] "Accelerometer.Body.SignalFrequency.Domain.Stand.Dev.Z.Axis"     
## [49] "Accelerometer.Body.Jerk.SignalFrequency.Domain.Mean.X.Axis"     
## [50] "Accelerometer.Body.Jerk.SignalFrequency.Domain.Mean.Y.Axis"     
## [51] "Accelerometer.Body.Jerk.SignalFrequency.Domain.Mean.Z.Axis"     
## [52] "Accelerometer.Body.Jerk.SignalFrequency.Domain.Stand.Dev.X.Axis"
## [53] "Accelerometer.Body.Jerk.SignalFrequency.Domain.Stand.Dev.Y.Axis"
## [54] "Accelerometer.Body.Jerk.SignalFrequency.Domain.Stand.Dev.Z.Axis"
## [55] "Gyroscope.Body.SignalFrequency.Domain.Mean.X.Axis"              
## [56] "Gyroscope.Body.SignalFrequency.Domain.Mean.Y.Axis"              
## [57] "Gyroscope.Body.SignalFrequency.Domain.Mean.Z.Axis"              
## [58] "Gyroscope.Body.SignalFrequency.Domain.Stand.Dev.X.Axis"         
## [59] "Gyroscope.Body.SignalFrequency.Domain.Stand.Dev.Y.Axis"         
## [60] "Gyroscope.Body.SignalFrequency.Domain.Stand.Dev.Z.Axis"         
## [61] "Accelerometer.Body.Signal.MagnitudeFrequency.Domain.Mean."      
## [62] "Accelerometer.Body.Signal.MagnitudeFrequency.Domain.Stand.Dev." 
## [63] "Accelerometer.Body.Jerk.SignalFrequency.Domain.MagMean."        
## [64] "Accelerometer.Body.Jerk.SignalFrequency.Domain.MagStand.Dev."   
## [65] "Gyroscope.Body.Signal.MagnitudeFrequency.Domain.Mean."          
## [66] "Gyroscope.Body.Signal.MagnitudeFrequency.Domain.Stand.Dev."     
## [67] "Gyroscope.Body.Jerk.Signal.MagnitudeFrequency.Domain.Mean."     
## [68] "Gyroscope.Body.Jerk.Signal.MagnitudeFrequency.Domain.Stand.Dev."
```

* A summary of the data is provided below 

```r
summary(tidy_data)
```

```
##    Subject_ID                 Activity 
##  Min.   : 1.0   LAYING            :30  
##  1st Qu.: 8.0   SITTING           :30  
##  Median :15.5   STANDING          :30  
##  Mean   :15.5   WALKING           :30  
##  3rd Qu.:23.0   WALKING_DOWNSTAIRS:30  
##  Max.   :30.0   WALKING_UPSTAIRS  :30  
##  Accelerometer.Body.SignalTime.Domain.Mean.X.Axis
##  Min.   :0.2216                                  
##  1st Qu.:0.2712                                  
##  Median :0.2770                                  
##  Mean   :0.2743                                  
##  3rd Qu.:0.2800                                  
##  Max.   :0.3015                                  
##  Accelerometer.Body.SignalTime.Domain.Mean.Y.Axis
##  Min.   :-0.040514                               
##  1st Qu.:-0.020022                               
##  Median :-0.017262                               
##  Mean   :-0.017876                               
##  3rd Qu.:-0.014936                               
##  Max.   :-0.001308                               
##  Accelerometer.Body.SignalTime.Domain.Mean.Z.Axis
##  Min.   :-0.15251                                
##  1st Qu.:-0.11207                                
##  Median :-0.10819                                
##  Mean   :-0.10916                                
##  3rd Qu.:-0.10443                                
##  Max.   :-0.07538                                
##  Accelerometer.Body.SignalTime.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9961                                      
##  1st Qu.:-0.9799                                      
##  Median :-0.7526                                      
##  Mean   :-0.5577                                      
##  3rd Qu.:-0.1984                                      
##  Max.   : 0.6269                                      
##  Accelerometer.Body.SignalTime.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.99024                                     
##  1st Qu.:-0.94205                                     
##  Median :-0.50897                                     
##  Mean   :-0.46046                                     
##  3rd Qu.:-0.03077                                     
##  Max.   : 0.61694                                     
##  Accelerometer.Body.SignalTime.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.9877                                      
##  1st Qu.:-0.9498                                      
##  Median :-0.6518                                      
##  Mean   :-0.5756                                      
##  3rd Qu.:-0.2306                                      
##  Max.   : 0.6090                                      
##  Accelerometer.Gravity.SignalTime.Domain.Mean.X.Axis
##  Min.   :-0.6800                                    
##  1st Qu.: 0.8376                                    
##  Median : 0.9208                                    
##  Mean   : 0.6975                                    
##  3rd Qu.: 0.9425                                    
##  Max.   : 0.9745                                    
##  Accelerometer.Gravity.SignalTime.Domain.Mean.Y.Axis
##  Min.   :-0.47989                                   
##  1st Qu.:-0.23319                                   
##  Median :-0.12782                                   
##  Mean   :-0.01621                                   
##  3rd Qu.: 0.08773                                   
##  Max.   : 0.95659                                   
##  Accelerometer.Gravity.SignalTime.Domain.Mean.Z.Axis
##  Min.   :-0.49509                                   
##  1st Qu.:-0.11726                                   
##  Median : 0.02384                                   
##  Mean   : 0.07413                                   
##  3rd Qu.: 0.14946                                   
##  Max.   : 0.95787                                   
##  Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9968                                         
##  1st Qu.:-0.9825                                         
##  Median :-0.9695                                         
##  Mean   :-0.9638                                         
##  3rd Qu.:-0.9509                                         
##  Max.   :-0.8296                                         
##  Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.9942                                         
##  1st Qu.:-0.9711                                         
##  Median :-0.9590                                         
##  Mean   :-0.9524                                         
##  3rd Qu.:-0.9370                                         
##  Max.   :-0.6436                                         
##  Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.9910                                         
##  1st Qu.:-0.9605                                         
##  Median :-0.9450                                         
##  Mean   :-0.9364                                         
##  3rd Qu.:-0.9180                                         
##  Max.   :-0.6102                                         
##  Accelerometer.Body.Jerk.SignalTime.Domain.Mean.X.Axis
##  Min.   :0.04269                                      
##  1st Qu.:0.07396                                      
##  Median :0.07640                                      
##  Mean   :0.07947                                      
##  3rd Qu.:0.08330                                      
##  Max.   :0.13019                                      
##  Accelerometer.Body.Jerk.SignalTime.Domain.Mean.Y.Axis
##  Min.   :-0.0386872                                   
##  1st Qu.: 0.0004664                                   
##  Median : 0.0094698                                   
##  Mean   : 0.0075652                                   
##  3rd Qu.: 0.0134008                                   
##  Max.   : 0.0568186                                   
##  Accelerometer.Body.Jerk.SignalTime.Domain.Mean.Z.Axis
##  Min.   :-0.067458                                    
##  1st Qu.:-0.010601                                    
##  Median :-0.003861                                    
##  Mean   :-0.004953                                    
##  3rd Qu.: 0.001958                                    
##  Max.   : 0.038053                                    
##  Accelerometer.Body.Jerk.SignalTime.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9946                                           
##  1st Qu.:-0.9832                                           
##  Median :-0.8104                                           
##  Mean   :-0.5949                                           
##  3rd Qu.:-0.2233                                           
##  Max.   : 0.5443                                           
##  Accelerometer.Body.Jerk.SignalTime.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.9895                                           
##  1st Qu.:-0.9724                                           
##  Median :-0.7756                                           
##  Mean   :-0.5654                                           
##  3rd Qu.:-0.1483                                           
##  Max.   : 0.3553                                           
##  Accelerometer.Body.Jerk.SignalTime.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.99329                                          
##  1st Qu.:-0.98266                                          
##  Median :-0.88366                                          
##  Mean   :-0.73596                                          
##  3rd Qu.:-0.51212                                          
##  Max.   : 0.03102                                          
##  Gyroscope.Body.SignalTime.Domain.Mean.X.Axis
##  Min.   :-0.20578                            
##  1st Qu.:-0.04712                            
##  Median :-0.02871                            
##  Mean   :-0.03244                            
##  3rd Qu.:-0.01676                            
##  Max.   : 0.19270                            
##  Gyroscope.Body.SignalTime.Domain.Mean.Y.Axis
##  Min.   :-0.20421                            
##  1st Qu.:-0.08955                            
##  Median :-0.07318                            
##  Mean   :-0.07426                            
##  3rd Qu.:-0.06113                            
##  Max.   : 0.02747                            
##  Gyroscope.Body.SignalTime.Domain.Mean.Z.Axis
##  Min.   :-0.07245                            
##  1st Qu.: 0.07475                            
##  Median : 0.08512                            
##  Mean   : 0.08744                            
##  3rd Qu.: 0.10177                            
##  Max.   : 0.17910                            
##  Gyroscope.Body.SignalTime.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9943                                  
##  1st Qu.:-0.9735                                  
##  Median :-0.7890                                  
##  Mean   :-0.6916                                  
##  3rd Qu.:-0.4414                                  
##  Max.   : 0.2677                                  
##  Gyroscope.Body.SignalTime.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.9942                                  
##  1st Qu.:-0.9629                                  
##  Median :-0.8017                                  
##  Mean   :-0.6533                                  
##  3rd Qu.:-0.4196                                  
##  Max.   : 0.4765                                  
##  Gyroscope.Body.SignalTime.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.9855                                  
##  1st Qu.:-0.9609                                  
##  Median :-0.8010                                  
##  Mean   :-0.6164                                  
##  3rd Qu.:-0.3106                                  
##  Max.   : 0.5649                                  
##  Gyroscope.Body.Jerk.SignalTime.Domain.Mean.X.Axis
##  Min.   :-0.15721                                 
##  1st Qu.:-0.10322                                 
##  Median :-0.09868                                 
##  Mean   :-0.09606                                 
##  3rd Qu.:-0.09110                                 
##  Max.   :-0.02209                                 
##  Gyroscope.Body.Jerk.SignalTime.Domain.Mean.Y.Axis
##  Min.   :-0.07681                                 
##  1st Qu.:-0.04552                                 
##  Median :-0.04112                                 
##  Mean   :-0.04269                                 
##  3rd Qu.:-0.03842                                 
##  Max.   :-0.01320                                 
##  Gyroscope.Body.Jerk.SignalTime.Domain.Mean.Z.Axis
##  Min.   :-0.092500                                
##  1st Qu.:-0.061725                                
##  Median :-0.053430                                
##  Mean   :-0.054802                                
##  3rd Qu.:-0.048985                                
##  Max.   :-0.006941                                
##  Gyroscope.Body.Jerk.SignalTime.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9965                                       
##  1st Qu.:-0.9800                                       
##  Median :-0.8396                                       
##  Mean   :-0.7036                                       
##  3rd Qu.:-0.4629                                       
##  Max.   : 0.1791                                       
##  Gyroscope.Body.Jerk.SignalTime.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.9971                                       
##  1st Qu.:-0.9832                                       
##  Median :-0.8942                                       
##  Mean   :-0.7636                                       
##  3rd Qu.:-0.5861                                       
##  Max.   : 0.2959                                       
##  Gyroscope.Body.Jerk.SignalTime.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.9954                                       
##  1st Qu.:-0.9848                                       
##  Median :-0.8610                                       
##  Mean   :-0.7096                                       
##  3rd Qu.:-0.4741                                       
##  Max.   : 0.1932                                       
##  Accelerometer.Body.Signal.MagnitudeTime.Domain.Mean.
##  Min.   :-0.9865                                     
##  1st Qu.:-0.9573                                     
##  Median :-0.4829                                     
##  Mean   :-0.4973                                     
##  3rd Qu.:-0.0919                                     
##  Max.   : 0.6446                                     
##  Accelerometer.Body.Signal.MagnitudeTime.Domain.Stand.Dev.
##  Min.   :-0.9865                                          
##  1st Qu.:-0.9430                                          
##  Median :-0.6074                                          
##  Mean   :-0.5439                                          
##  3rd Qu.:-0.2090                                          
##  Max.   : 0.4284                                          
##  Accelerometer.Gravity.Signal.MagnitudeTime.DomainMean.
##  Min.   :-0.9865                                       
##  1st Qu.:-0.9573                                       
##  Median :-0.4829                                       
##  Mean   :-0.4973                                       
##  3rd Qu.:-0.0919                                       
##  Max.   : 0.6446                                       
##  Accelerometer.Gravity.Signal.MagnitudeTime.DomainStand.Dev.
##  Min.   :-0.9865                                            
##  1st Qu.:-0.9430                                            
##  Median :-0.6074                                            
##  Mean   :-0.5439                                            
##  3rd Qu.:-0.2090                                            
##  Max.   : 0.4284                                            
##  Accelerometer.Body.Jerk.Signal.MaginitudeTime.Domain.Mean.
##  Min.   :-0.9928                                           
##  1st Qu.:-0.9807                                           
##  Median :-0.8168                                           
##  Mean   :-0.6079                                           
##  3rd Qu.:-0.2456                                           
##  Max.   : 0.4345                                           
##  Accelerometer.Body.Jerk.Signal.MaginitudeTime.Domain.Stand.Dev.
##  Min.   :-0.9946                                                
##  1st Qu.:-0.9765                                                
##  Median :-0.8014                                                
##  Mean   :-0.5842                                                
##  3rd Qu.:-0.2173                                                
##  Max.   : 0.4506                                                
##  Gyroscope.Body.Signal.MagnitudeTime.Domain.Mean.
##  Min.   :-0.9807                                 
##  1st Qu.:-0.9461                                 
##  Median :-0.6551                                 
##  Mean   :-0.5652                                 
##  3rd Qu.:-0.2159                                 
##  Max.   : 0.4180                                 
##  Gyroscope.Body.Signal.MagnitudeTime.Domain.Stand.Dev.
##  Min.   :-0.9814                                      
##  1st Qu.:-0.9476                                      
##  Median :-0.7420                                      
##  Mean   :-0.6304                                      
##  3rd Qu.:-0.3602                                      
##  Max.   : 0.3000                                      
##  Gyroscope.Body.Jerk.Signal.MagnitudeTime.Domain.Mean.
##  Min.   :-0.99732                                     
##  1st Qu.:-0.98515                                     
##  Median :-0.86479                                     
##  Mean   :-0.73637                                     
##  3rd Qu.:-0.51186                                     
##  Max.   : 0.08758                                     
##  Gyroscope.Body.Jerk.Signal.MagnitudeTime.Domain.Stand.Dev.
##  Min.   :-0.9977                                           
##  1st Qu.:-0.9805                                           
##  Median :-0.8809                                           
##  Mean   :-0.7550                                           
##  3rd Qu.:-0.5767                                           
##  Max.   : 0.2502                                           
##  Accelerometer.Body.SignalFrequency.Domain.Mean.X.Axis
##  Min.   :-0.9952                                      
##  1st Qu.:-0.9787                                      
##  Median :-0.7691                                      
##  Mean   :-0.5758                                      
##  3rd Qu.:-0.2174                                      
##  Max.   : 0.5370                                      
##  Accelerometer.Body.SignalFrequency.Domain.Mean.Y.Axis
##  Min.   :-0.98903                                     
##  1st Qu.:-0.95361                                     
##  Median :-0.59498                                     
##  Mean   :-0.48873                                     
##  3rd Qu.:-0.06341                                     
##  Max.   : 0.52419                                     
##  Accelerometer.Body.SignalFrequency.Domain.Mean.Z.Axis
##  Min.   :-0.9895                                      
##  1st Qu.:-0.9619                                      
##  Median :-0.7236                                      
##  Mean   :-0.6297                                      
##  3rd Qu.:-0.3183                                      
##  Max.   : 0.2807                                      
##  Accelerometer.Body.SignalFrequency.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9966                                           
##  1st Qu.:-0.9820                                           
##  Median :-0.7470                                           
##  Mean   :-0.5522                                           
##  3rd Qu.:-0.1966                                           
##  Max.   : 0.6585                                           
##  Accelerometer.Body.SignalFrequency.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.99068                                          
##  1st Qu.:-0.94042                                          
##  Median :-0.51338                                          
##  Mean   :-0.48148                                          
##  3rd Qu.:-0.07913                                          
##  Max.   : 0.56019                                          
##  Accelerometer.Body.SignalFrequency.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.9872                                           
##  1st Qu.:-0.9459                                           
##  Median :-0.6441                                           
##  Mean   :-0.5824                                           
##  3rd Qu.:-0.2655                                           
##  Max.   : 0.6871                                           
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.Mean.X.Axis
##  Min.   :-0.9946                                           
##  1st Qu.:-0.9828                                           
##  Median :-0.8126                                           
##  Mean   :-0.6139                                           
##  3rd Qu.:-0.2820                                           
##  Max.   : 0.4743                                           
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.Mean.Y.Axis
##  Min.   :-0.9894                                           
##  1st Qu.:-0.9725                                           
##  Median :-0.7817                                           
##  Mean   :-0.5882                                           
##  3rd Qu.:-0.1963                                           
##  Max.   : 0.2767                                           
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.Mean.Z.Axis
##  Min.   :-0.9920                                           
##  1st Qu.:-0.9796                                           
##  Median :-0.8707                                           
##  Mean   :-0.7144                                           
##  3rd Qu.:-0.4697                                           
##  Max.   : 0.1578                                           
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9951                                                
##  1st Qu.:-0.9847                                                
##  Median :-0.8254                                                
##  Mean   :-0.6121                                                
##  3rd Qu.:-0.2475                                                
##  Max.   : 0.4768                                                
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.9905                                                
##  1st Qu.:-0.9737                                                
##  Median :-0.7852                                                
##  Mean   :-0.5707                                                
##  3rd Qu.:-0.1685                                                
##  Max.   : 0.3498                                                
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.993108                                              
##  1st Qu.:-0.983747                                              
##  Median :-0.895121                                              
##  Mean   :-0.756489                                              
##  3rd Qu.:-0.543787                                              
##  Max.   :-0.006236                                              
##  Gyroscope.Body.SignalFrequency.Domain.Mean.X.Axis
##  Min.   :-0.9931                                  
##  1st Qu.:-0.9697                                  
##  Median :-0.7300                                  
##  Mean   :-0.6367                                  
##  3rd Qu.:-0.3387                                  
##  Max.   : 0.4750                                  
##  Gyroscope.Body.SignalFrequency.Domain.Mean.Y.Axis
##  Min.   :-0.9940                                  
##  1st Qu.:-0.9700                                  
##  Median :-0.8141                                  
##  Mean   :-0.6767                                  
##  3rd Qu.:-0.4458                                  
##  Max.   : 0.3288                                  
##  Gyroscope.Body.SignalFrequency.Domain.Mean.Z.Axis
##  Min.   :-0.9860                                  
##  1st Qu.:-0.9624                                  
##  Median :-0.7909                                  
##  Mean   :-0.6044                                  
##  3rd Qu.:-0.2635                                  
##  Max.   : 0.4924                                  
##  Gyroscope.Body.SignalFrequency.Domain.Stand.Dev.X.Axis
##  Min.   :-0.9947                                       
##  1st Qu.:-0.9750                                       
##  Median :-0.8086                                       
##  Mean   :-0.7110                                       
##  3rd Qu.:-0.4813                                       
##  Max.   : 0.1966                                       
##  Gyroscope.Body.SignalFrequency.Domain.Stand.Dev.Y.Axis
##  Min.   :-0.9944                                       
##  1st Qu.:-0.9602                                       
##  Median :-0.7964                                       
##  Mean   :-0.6454                                       
##  3rd Qu.:-0.4154                                       
##  Max.   : 0.6462                                       
##  Gyroscope.Body.SignalFrequency.Domain.Stand.Dev.Z.Axis
##  Min.   :-0.9867                                       
##  1st Qu.:-0.9643                                       
##  Median :-0.8224                                       
##  Mean   :-0.6577                                       
##  3rd Qu.:-0.3916                                       
##  Max.   : 0.5225                                       
##  Accelerometer.Body.Signal.MagnitudeFrequency.Domain.Mean.
##  Min.   :-0.9868                                          
##  1st Qu.:-0.9560                                          
##  Median :-0.6703                                          
##  Mean   :-0.5365                                          
##  3rd Qu.:-0.1622                                          
##  Max.   : 0.5866                                          
##  Accelerometer.Body.Signal.MagnitudeFrequency.Domain.Stand.Dev.
##  Min.   :-0.9876                                               
##  1st Qu.:-0.9452                                               
##  Median :-0.6513                                               
##  Mean   :-0.6210                                               
##  3rd Qu.:-0.3654                                               
##  Max.   : 0.1787                                               
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.MagMean.
##  Min.   :-0.9940                                        
##  1st Qu.:-0.9770                                        
##  Median :-0.7940                                        
##  Mean   :-0.5756                                        
##  3rd Qu.:-0.1872                                        
##  Max.   : 0.5384                                        
##  Accelerometer.Body.Jerk.SignalFrequency.Domain.MagStand.Dev.
##  Min.   :-0.9944                                             
##  1st Qu.:-0.9752                                             
##  Median :-0.8126                                             
##  Mean   :-0.5992                                             
##  3rd Qu.:-0.2668                                             
##  Max.   : 0.3163                                             
##  Gyroscope.Body.Signal.MagnitudeFrequency.Domain.Mean.
##  Min.   :-0.9865                                      
##  1st Qu.:-0.9616                                      
##  Median :-0.7657                                      
##  Mean   :-0.6671                                      
##  3rd Qu.:-0.4087                                      
##  Max.   : 0.2040                                      
##  Gyroscope.Body.Signal.MagnitudeFrequency.Domain.Stand.Dev.
##  Min.   :-0.9815                                           
##  1st Qu.:-0.9488                                           
##  Median :-0.7727                                           
##  Mean   :-0.6723                                           
##  3rd Qu.:-0.4277                                           
##  Max.   : 0.2367                                           
##  Gyroscope.Body.Jerk.Signal.MagnitudeFrequency.Domain.Mean.
##  Min.   :-0.9976                                           
##  1st Qu.:-0.9813                                           
##  Median :-0.8779                                           
##  Mean   :-0.7564                                           
##  3rd Qu.:-0.5831                                           
##  Max.   : 0.1466                                           
##  Gyroscope.Body.Jerk.Signal.MagnitudeFrequency.Domain.Stand.Dev.
##  Min.   :-0.9976                                                
##  1st Qu.:-0.9802                                                
##  Median :-0.8941                                                
##  Mean   :-0.7715                                                
##  3rd Qu.:-0.6081                                                
##  Max.   : 0.2878
```

###Variable 1
**Subject_ID** This variable describes the ID for each subject (volunteer).
The class is:

```r
class(tidy_data[,1])
```

```
## [1] "integer"
```
The unique values are:

```r
levels(tidy_data$Subject_ID)
```

```
## NULL
```

 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 2
**Activity** This variable describes the activity being done.
The class is:

```r
class(tidy_data[,2])
```

```
## [1] "factor"
```
The unique values are:

```r
levels(tidy_data[,2])
```

```
## [1] "LAYING"             "SITTING"            "STANDING"          
## [4] "WALKING"            "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS"
```

###Variables 3, 4, 5, 6, 7, and 8
The variables listed below are the means and standard deviations for the body signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is not specified.  Each variable name lists the source (accelerometer), the type of signal (body signal), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,3:8])
```

```
## [1] "Accelerometer.Body.SignalTime.Domain.Mean.X.Axis"     
## [2] "Accelerometer.Body.SignalTime.Domain.Mean.Y.Axis"     
## [3] "Accelerometer.Body.SignalTime.Domain.Mean.Z.Axis"     
## [4] "Accelerometer.Body.SignalTime.Domain.Stand.Dev.X.Axis"
## [5] "Accelerometer.Body.SignalTime.Domain.Stand.Dev.Y.Axis"
## [6] "Accelerometer.Body.SignalTime.Domain.Stand.Dev.Z.Axis"
```


###Variables 9, 10, 11, 12, 13, and 14
The variables listed below are the means and standard deviations for the gravity signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is not specified.  Each variable name lists the source (accelerometer), the type of signal (gravity signal), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,9:14])
```

```
## [1] "Accelerometer.Gravity.SignalTime.Domain.Mean.X.Axis"     
## [2] "Accelerometer.Gravity.SignalTime.Domain.Mean.Y.Axis"     
## [3] "Accelerometer.Gravity.SignalTime.Domain.Mean.Z.Axis"     
## [4] "Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.X.Axis"
## [5] "Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.Y.Axis"
## [6] "Accelerometer.Gravity.SignalTime.Domain.Stand.Dev.Z.Axis"
```


###Variables 15, 16, 17, 18, 19, and 20

###Variables 21, 22, 23, 24, 25, and 26

###Variables 27, 28, 29, 30, 31, and 32

###Variables 33 and 34

###Variables 35 and 36

###Variables 37 and 38

###Variables 39 and 40

###Variables 41 and 42

###Variables 43, 44, 45, 46, 47 and 48

###Variables 49, 50, 51, 52, 53 and 54

###Variables 55, 56, 57, 58, 59 and 60

###Variables 61 and 62

###Variable 63 and 64

###Variable 65 and 66

###Variable 67 and 68


##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
