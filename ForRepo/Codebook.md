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



###Cleaning of the data
My cleaning script downloads and reads the relevant data into R, creates a tidy dataset with the disaggregated mean and standard deviation variables for each signal, and then creates a second tidy dataset with the average of each variable for each activity and each subject [See this readme document, which describes the code in greater detail](https://github.com/ncarrizo/project-repo/blob/master/ForRepo/readme.md)

##Description of the variables in the tiny_data.txt file

* The dimensions of the dataset are 180 observations of 68 variables
* The 68 variables are listed below



```r
names(tidy_data)
```

```
##  [1] "V1"  "V2"  "V3"  "V4"  "V5"  "V6"  "V7"  "V8"  "V9"  "V10" "V11"
## [12] "V12" "V13" "V14" "V15" "V16" "V17" "V18" "V19" "V20" "V21" "V22"
## [23] "V23" "V24" "V25" "V26" "V27" "V28" "V29" "V30" "V31" "V32" "V33"
## [34] "V34" "V35" "V36" "V37" "V38" "V39" "V40" "V41" "V42" "V43" "V44"
## [45] "V45" "V46" "V47" "V48" "V49" "V50" "V51" "V52" "V53" "V54" "V55"
## [56] "V56" "V57" "V58" "V59" "V60" "V61" "V62" "V63" "V64" "V65" "V66"
## [67] "V67" "V68"
```

* A summary of the data is provided below 

```r
summary(tidy_data)
```

```
##        V1                       V2                     V3     
##  1      :  6   Activity          : 1   0.22159824394    :  1  
##  10     :  6   LAYING            :30   0.233275439803922:  1  
##  11     :  6   SITTING           :30   0.239507882205882:  1  
##  12     :  6   STANDING          :30   0.242118808925   :  1  
##  13     :  6   WALKING           :30   0.247164790395833:  1  
##  14     :  6   WALKING_DOWNSTAIRS:30   0.24832674354    :  1  
##  (Other):145   WALKING_UPSTAIRS  :30   (Other)          :175  
##                     V4                        V5     
##  -0.00130828765170213:  1   -0.07537846886     :  1  
##  -0.00350299841730769:  1   -0.0868333315509804:  1  
##  -0.00563047804309524:  1   -0.0891404038405797:  1  
##  -0.00587732936326531:  1   -0.0892432745173913:  1  
##  -0.00672550621304348:  1   -0.0910278793952381:  1  
##  -0.00700418554517857:  1   -0.0928330165533333:  1  
##  (Other)             :175   (Other)            :175  
##                     V6                         V7     
##  -0.00865921919565217:  1   -0.00232026501698113:  1  
##  -0.0260971840270833 :  1   -0.00406536043541667:  1  
##  -0.0457237779851064 :  1   -0.00555287692765957:  1  
##  -0.0489049407963462 :  1   -0.011629910112     :  1  
##  -0.0501350188513725 :  1   -0.0131721014395833 :  1  
##  -0.0574100475102041 :  1   -0.0175797885542623 :  1  
##  (Other)             :175   (Other)             :175  
##                     V8                       V9     
##  -0.00771530035714285:  1   -0.134832031403509:  1  
##  -0.0194792388471698 :  1   -0.145483631627451:  1  
##  -0.0579636469030769 :  1   -0.156852206467742:  1  
##  -0.0636402447755319 :  1   -0.1719930545     :  1  
##  -0.0717893558666667 :  1   -0.174349174822222:  1  
##  -0.0738744931340426 :  1   -0.19913309       :  1  
##  (Other)             :175   (Other)           :175  
##                   V10                        V11     
##  -0.002814673171875 :  1   -0.00199310572363636:  1  
##  -0.010383816474    :  1   -0.00307981704708333:  1  
##  -0.0199270225714286:  1   -0.00392556384476923:  1  
##  -0.0314341738730769:  1   -0.00557416876082625:  1  
##  -0.0352304645104762:  1   -0.0184608964392157 :  1  
##  -0.0364533962277778:  1   -0.0221401100714154 :  1  
##  (Other)            :175   (Other)             :175  
##                  V12                      V13     
##  -0.829554947808219:  1   -0.643578361424658:  1  
##  -0.862136937254902:  1   -0.900511719787234:  1  
##  -0.887746310350877:  1   -0.9010448505     :  1  
##  -0.8968300184     :  1   -0.901317321632653:  1  
##  -0.899726139487179:  1   -0.903923008269231:  1  
##  -0.914221270096154:  1   -0.907231431296296:  1  
##  (Other)           :175   (Other)           :175  
##                  V14                      V15     
##  -0.610161166287671:  1   0.0426880986186441:  1  
##  -0.83693567475    :  1   0.0428631626711111:  1  
##  -0.85236629022    :  1   0.045764401482    :  1  
##  -0.858849467142857:  1   0.0541553164897959:  1  
##  -0.862402791230769:  1   0.0560971909634615:  1  
##  -0.864745838297872:  1   0.0578010605648148:  1  
##  (Other)           :175   (Other)           :175  
##                     V16                         V17     
##  -0.000213838552075472:  1   -0.000143542544507042:  1  
##  -0.000619102785106384:  1   -0.000175352166235294:  1  
##  -0.000689019191836735:  1   -0.000374189681428571:  1  
##  -0.000757069449090909:  1   -0.000673798876875   :  1  
##  -0.000812387078431372:  1   -0.000685549292837838:  1  
##  -0.000842715149193548:  1   -0.000704979340543859:  1  
##  (Other)              :175   (Other)              :175  
##                    V18                       V19     
##  -0.00358338882727273:  1   -0.0123501104926829:  1  
##  -0.00853992680952381:  1   -0.0128865483575   :  1  
##  -0.012283860544898  :  1   -0.0166022362847458:  1  
##  -0.01350661106      :  1   -0.0319265467387037:  1  
##  -0.0167652227782609 :  1   -0.0347143855729423:  1  
##  -0.023952574044375  :  1   -0.0413994646723529:  1  
##  (Other)             :175   (Other)            :175  
##                   V20                        V21     
##  -0.0135136269      :  1   -0.00282641913096154:  1  
##  -0.0200111148717949:  1   -0.00334085938813559:  1  
##  -0.0293115056033898:  1   -0.00347655062271186:  1  
##  -0.133634060621778 :  1   -0.00355974576923077:  1  
##  -0.149488514397895 :  1   -0.00795668167188679:  1  
##  -0.179390497475    :  1   -0.0079605026754386 :  1  
##  (Other)            :175   (Other)             :175  
##                    V22                         V23     
##  -0.00247161973      :  1   -0.000233248224999999:  1  
##  -0.00482329231914894:  1   -0.00546829763829787 :  1  
##  -0.0139358043959184 :  1   -0.00779288021764706 :  1  
##  -0.0163131590545455 :  1   -0.0325557522333333  :  1  
##  -0.0172822168012963 :  1   -0.0441381886666667  :  1  
##  -0.0237205719148936 :  1   -0.0724546025804878  :  1  
##  (Other)             :175   (Other)              :175  
##                   V24                       V25     
##  -0.0264357957923077:  1   -0.0148392604279661:  1  
##  -0.19830385328125  :  1   -0.0546077686594737:  1  
##  -0.1992097184375   :  1   -0.0666980861414634:  1  
##  -0.204939567711111 :  1   -0.0840481513184615:  1  
##  -0.23294061427451  :  1   -0.104722161186078 :  1  
##  -0.237349190997222 :  1   -0.114406108840577 :  1  
##  (Other)            :175   (Other)            :175  
##                   V26                       V27     
##  -0.0314083457948718:  1   -0.0220916265065217:  1  
##  -0.0317301153392157:  1   -0.0256452232354167:  1  
##  -0.0353021837      :  1   -0.0264668968652174:  1  
##  -0.0754447842395833:  1   -0.0266492977565217:  1  
##  -0.0940797929729167:  1   -0.0337429578461538:  1  
##  -0.104202986482692 :  1   -0.0349283489710526:  1  
##  (Other)            :175   (Other)            :175  
##                   V28                        V29     
##  -0.0132022768074468:  1   -0.00694066389361702:  1  
##  -0.0141113353615385:  1   -0.0137237620296296 :  1  
##  -0.0189816250372549:  1   -0.0223482086545833 :  1  
##  -0.0207749732407407:  1   -0.0236327911183673 :  1  
##  -0.027552256948    :  1   -0.0270461061061224 :  1  
##  -0.027919577097561 :  1   -0.0293255016148148 :  1  
##  (Other)            :175   (Other)             :175  
##                  V30                       V31     
##  -0.16394489726087 :  1   -0.0146299196923077:  1  
##  -0.170842676616   :  1   -0.0704526510842105:  1  
##  -0.18260093354386 :  1   -0.127554090666667 :  1  
##  -0.186763293747059:  1   -0.174136410738596 :  1  
##  -0.207421854757895:  1   -0.193508405479167 :  1  
##  -0.21166729682807 :  1   -0.238824827530612 :  1  
##  (Other)           :175   (Other)            :175  
##                   V32                         V33     
##  -0.0344217467042553:  1   -0.000971394711666667:  1  
##  -0.157682543983929 :  1   -0.0117536873784314  :  1  
##  -0.166684422233333 :  1   -0.0128062276916667  :  1  
##  -0.170814790834118 :  1   -0.0266623294757447  :  1  
##  -0.1896044435      :  1   -0.0294634299553191  :  1  
##  -0.213494065344231 :  1   -0.0373901122469355  :  1  
##  (Other)            :175   (Other)              :175  
##                   V34                         V35     
##  -0.0135771208822581:  1   -0.000971394711666667:  1  
##  -0.0156098198829787:  1   -0.0117536873784314  :  1  
##  -0.0197686685018519:  1   -0.0128062276916667  :  1  
##  -0.0224839122854545:  1   -0.0266623294757447  :  1  
##  -0.0411340078469388:  1   -0.0294634299553191  :  1  
##  -0.0414696051693878:  1   -0.0373901122469355  :  1  
##  (Other)            :175   (Other)              :175  
##                   V36                       V37     
##  -0.0135771208822581:  1   -0.0179784626888889:  1  
##  -0.0156098198829787:  1   -0.0372666071540476:  1  
##  -0.0197686685018519:  1   -0.0429359302764706:  1  
##  -0.0224839122854545:  1   -0.0612699838466667:  1  
##  -0.0411340078469388:  1   -0.0637528559361702:  1  
##  -0.0414696051693878:  1   -0.0668322430433333:  1  
##  (Other)            :175   (Other)            :175  
##                   V38                       V39     
##  -0.02028505044     :  1   -0.00310243820125  :  1  
##  -0.0257877197081633:  1   -0.0120968259523729:  1  
##  -0.0268194363050847:  1   -0.0229640797463077:  1  
##  -0.027557329277193 :  1   -0.0238468037578947:  1  
##  -0.0292570509829787:  1   -0.06161577145     :  1  
##  -0.0307693372041667:  1   -0.068246324026087 :  1  
##  (Other)            :175   (Other)            :175  
##                   V40                       V41     
##  -0.0218463165461538:  1   -0.0463117766203704:  1  
##  -0.0305762438706667:  1   -0.0829366854166667:  1  
##  -0.0367853189588235:  1   -0.126189142894737 :  1  
##  -0.0426276750979167:  1   -0.164699977592308 :  1  
##  -0.0466291872078947:  1   -0.194893253196078 :  1  
##  -0.0665144570666667:  1   -0.268183423577778 :  1  
##  (Other)            :175   (Other)            :175  
##                   V42                       V43     
##  -0.0438985022538462:  1   -0.0226239171245652:  1  
##  -0.0953401161070176:  1   -0.0299815666923077:  1  
##  -0.111228416159583 :  1   -0.0343309987555556:  1  
##  -0.149864146847059 :  1   -0.0421706943244898:  1  
##  -0.157484866842105 :  1   -0.05435763951     :  1  
##  -0.271487480103846 :  1   -0.0553996485285714:  1  
##  (Other)            :175   (Other)            :175  
##                    V44                       V45     
##  -0.006237000044     :  1   -0.04769426376     :  1  
##  -0.00770048300204082:  1   -0.070577489272549 :  1  
##  -0.02122937175      :  1   -0.0729496941121951:  1  
##  -0.0216637054241935 :  1   -0.0769713066866667:  1  
##  -0.0219048103322034 :  1   -0.103705822657857 :  1  
##  -0.0293832440223529 :  1   -0.104423357596154 :  1  
##  (Other)             :175   (Other)            :175  
##                    V46                        V47     
##  -0.00473819670425532:  1   -0.00256294245192308:  1  
##  -0.00838243761666667:  1   -0.00803987529661017:  1  
##  -0.0211335627276471 :  1   -0.0191328333041667 :  1  
##  -0.0260463260078947 :  1   -0.0252781736083333 :  1  
##  -0.0282962478037037 :  1   -0.0439473073581818 :  1  
##  -0.0349085946785455 :  1   -0.051628469647234  :  1  
##  (Other)             :175   (Other)             :175  
##                   V48                        V49     
##  -0.0337965256573077:  1   -0.00701472271717392:  1  
##  -0.0342347233914894:  1   -0.0268676982326087 :  1  
##  -0.0349494927142857:  1   -0.0276638676122449 :  1  
##  -0.0379716239787234:  1   -0.0305226686191489 :  1  
##  -0.0783635041538461:  1   -0.0337820458644444 :  1  
##  -0.0931447617846154:  1   -0.0367047077608696 :  1  
##  (Other)            :175   (Other)             :175  
##                    V50                       V51     
##  -0.00309155313333333:  1   -0.0248789805888889:  1  
##  -0.0127039720456522 :  1   -0.0572021324745763:  1  
##  -0.0257952590634146 :  1   -0.106490372892632 :  1  
##  -0.0269769415214286 :  1   -0.129367902596154 :  1  
##  -0.0352255241130632 :  1   -0.196838264546667 :  1  
##  -0.0439195137368421 :  1   -0.240679035428947 :  1  
##  (Other)             :175   (Other)            :175  
##                    V52                        V53     
##  -0.00426289144680851:  1   -0.00175391954565217:  1  
##  -0.0302396365755556 :  1   -0.00561498755362069:  1  
##  -0.03105929456      :  1   -0.00722860241119048:  1  
##  -0.0463867896444444 :  1   -0.0131695876025    :  1  
##  -0.0522811342045455 :  1   -0.0148415165923077 :  1  
##  -0.0677978520178571 :  1   -0.0153329520084746 :  1  
##  (Other)             :175   (Other)             :175  
##                    V54                       V55     
##  -0.00623647528983051:  1   -0.0299969963043478:  1  
##  -0.0846674186842105 :  1   -0.0629572600911111:  1  
##  -0.0983930104846154 :  1   -0.0936248686019608:  1  
##  -0.09851956305      :  1   -0.0954349339722222:  1  
##  -0.190751539207018  :  1   -0.102063053808333 :  1  
##  -0.227829841936346  :  1   -0.115065008156863 :  1  
##  (Other)             :175   (Other)            :175  
##                   V56                       V57     
##  -0.0557022524693878:  1   -0.01050470716     :  1  
##  -0.0973549846596154:  1   -0.0318694271979592:  1  
##  -0.103059416434737 :  1   -0.034175027916383 :  1  
##  -0.113162144460976 :  1   -0.0464142110215686:  1  
##  -0.130327465789583 :  1   -0.06612935167     :  1  
##  -0.133828886725532 :  1   -0.083501182326087 :  1  
##  (Other)            :175   (Other)            :175  
##                  V58                       V59     
##  -0.108388809533846:  1   -0.028489571974359 :  1  
##  -0.234252005895833:  1   -0.0335081597884211:  1  
##  -0.253365630644444:  1   -0.0461356322868421:  1  
##  -0.278386596338226:  1   -0.0478802512585366:  1  
##  -0.279931528352941:  1   -0.079046721372549 :  1  
##  -0.284532358444444:  1   -0.0941359695075472:  1  
##  (Other)           :175   (Other)            :175  
##                   V60                        V61     
##  -0.0822521122215686:  1   -0.00353341793921569:  1  
##  -0.1429742348125   :  1   -0.01907433524      :  1  
##  -0.1503916379      :  1   -0.0231701626603636 :  1  
##  -0.165554554220408 :  1   -0.0241584964891304 :  1  
##  -0.180232949016949 :  1   -0.0759851813333333 :  1  
##  -0.183508696647059 :  1   -0.07962876322      :  1  
##  (Other)            :175   (Other)             :175  
##                   V62                       V63     
##  -0.0214787881723404:  1   -0.0128823827326087:  1  
##  -0.0330868111229167:  1   -0.0180705701559322:  1  
##  -0.0453930349148148:  1   -0.0282156656914894:  1  
##  -0.0534137179170213:  1   -0.029912425338    :  1  
##  -0.0575202606055556:  1   -0.0384187298547368:  1  
##  -0.0616742840815789:  1   -0.0458020362119048:  1  
##  (Other)            :175   (Other)            :175  
##                   V64                        V65     
##  -0.013953908696    :  1   -0.00036272967368421:  1  
##  -0.0186734409634615:  1   -0.0143735434       :  1  
##  -0.022138358       :  1   -0.0520065599062745 :  1  
##  -0.0222869586038462:  1   -0.0787568406777778 :  1  
##  -0.0310650270227451:  1   -0.0952460452365385 :  1  
##  -0.0457372334118644:  1   -0.100566103524444  :  1  
##  (Other)            :175   (Other)             :175  
##                  V66                       V67     
##  -0.061476584759322:  1   -0.0229045295641026:  1  
##  -0.074331469755102:  1   -0.125179586744737 :  1  
##  -0.141598402309615:  1   -0.132705384364583 :  1  
##  -0.151472278383077:  1   -0.155339855862632 :  1  
##  -0.151681987177778:  1   -0.180365335498431 :  1  
##  -0.166969377765957:  1   -0.254747132274667 :  1  
##  (Other)           :175   (Other)            :175  
##                   V68     
##  -0.0398573780185185:  1  
##  -0.0841663774087719:  1  
##  -0.143254547512821 :  1  
##  -0.145733545496458 :  1  
##  -0.171975765239216 :  1  
##  -0.26298447        :  1  
##  (Other)            :175
```

###Variable 1
**Subject_ID** This variable describes the ID for each subject (volunteer).
The class is:

```r
class(tidy_data[,1])
```

```
## [1] "factor"
```
The unique values are the numbers 1 through 30, for each volunteer.

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
## [1] "Activity"           "LAYING"             "SITTING"           
## [4] "STANDING"           "WALKING"            "WALKING_DOWNSTAIRS"
## [7] "WALKING_UPSTAIRS"
```

###Variables 3, 4, 5, 6, 7, and 8
The variables listed below are the means of the means and standard deviations for the body signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal (body signal), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,3:8])
```

```
## [1] "V3" "V4" "V5" "V6" "V7" "V8"
```


###Variables 9, 10, 11, 12, 13, and 14
The variables listed below are the means of the means and standard deviations for the gravity signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal (gravity signal), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,9:14])
```

```
## [1] "V9"  "V10" "V11" "V12" "V13" "V14"
```

###Variables 15, 16, 17, 18, 19, and 20
The variables listed below are the means of the means and standard deviations for the body jerk signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal (body jerk signal), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,15:20])
```

```
## [1] "V15" "V16" "V17" "V18" "V19" "V20"
```

###Variables 21, 22, 23, 24, 25, and 26
The variables listed below are the means of the means and standard deviations for the body signals from the gyroscope for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is radians per second.  Each variable name lists the source (gyroscope), the type of signal (body signal), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,21:26])
```

```
## [1] "V21" "V22" "V23" "V24" "V25" "V26"
```

###Variables 27, 28, 29, 30, 31, and 32
The variables listed below are the means of the means and standard deviations for the body jerk signals from the gyroscope for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is radians per second.  Each variable name lists the source (gyroscope), the type of signal (body jerk signal), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,27:32])
```

```
## [1] "V27" "V28" "V29" "V30" "V31" "V32"
```

###Variables 33 and 34
The variables listed below are the means of the mean and standard deviation for the magnitude of the body signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal measurement (body signal magnitude), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,33:34])
```

```
## [1] "V33" "V34"
```

###Variables 35 and 36
The variables listed below are the means of the mean and standard deviation for the magnitude of the gravity signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal measurement (gravity signal magnitude), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,35:36])
```

```
## [1] "V35" "V36"
```

###Variables 37 and 38
The variables listed below are the means of the mean and standard deviation for the magnitude of the body jerk signals from the accelerometer for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of measurement (body signal magnitude), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,37:38])
```

```
## [1] "V37" "V38"
```

###Variables 39 and 40
The variables listed below are the means of the mean and standard deviation for the magnitude of the body signals from the gyroscope for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is radians per second.  Each variable name lists the source (gyroscope), the type of measurement (body signal magnitude), the domain of the signal (time), the type of variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,39:40])
```

```
## [1] "V39" "V40"
```


###Variables 41 and 42
The variables listed below are the means of the mean and standard deviation for the magnitude of the body jerk signals from the gyroscope for the time domain.  Each of these variables is a numeric variable.  The unit of measurement is radians per second.  Each variable name lists the source (gyroscope), the type of measurement (body jerk signal magnitude), the domain of the signal (time), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,41:42])
```

```
## [1] "V41" "V42"
```

###Variables 43, 44, 45, 46, 47 and 48
The variables listed below are the means of the means and standard deviations for the body signals from the accelerometer for the frequency domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal (body signal), the domain of the signal (frequency), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,43:48])
```

```
## [1] "V43" "V44" "V45" "V46" "V47" "V48"
```

###Variables 49, 50, 51, 52, 53 and 54
The variables listed below are the means of the means and standard deviations for the body jerk signals from the accelerometer for the frequency domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal (body jerk signal), the domain of the signal (frequency), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,49:54])
```

```
## [1] "V49" "V50" "V51" "V52" "V53" "V54"
```

###Variables 55, 56, 57, 58, 59 and 60
The variables listed below are the means of the means and standard deviations for the body signals from the gyroscope for the frequency domain.  Each of these variables is a numeric variable.  The unit of measurement is radians per second.  Each variable name lists the source (gyroscope), the type of signal (body signal), the domain of the signal (frequency), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,55:60])
```

```
## [1] "V55" "V56" "V57" "V58" "V59" "V60"
```

###Variables 61 and 62
The variables listed below are the means of the mean and standard deviation for the magnitude of the body signals from the accelerometer for the frequency domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal measurement (body signal magnitude), the domain of the signal (frequency), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,61:62])
```

```
## [1] "V61" "V62"
```

###Variable 63 and 64
The variables listed below are the means of the mean and standard deviation for the magnitude of the body jerk signals from the accelerometer for the frequency domain.  Each of these variables is a numeric variable.  The unit of measurement is standard gravity units.  Each variable name lists the source (accelerometer), the type of signal measurement (body jerk signal magnitude), the domain of the signal (frequency), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,63:64])
```

```
## [1] "V63" "V64"
```

###Variable 65 and 66
The variables listed below are the means of the mean and standard deviation for the magnitude of the body signals from the gyroscope for the frequency domain.  Each of these variables is a numeric variable.  The unit of measurement is radians per second.  Each variable name lists the source (gyroscope), the type of signal measurement (body signal magnitude), the domain of the signal (frequency), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,65:66])
```

```
## [1] "V65" "V66"
```


###Variable 67 and 68
The variables listed below are the means of the mean and standard deviation for the magnitude of the body jerk signals from the gyroscope for the frequency domain.  Each of these variables is a numeric variable.  The unit of measurement is radians per second.  Each variable name lists the source (gyroscope), the type of signal measurement (body jerk signal magnitude), the domain of the signal (frequency), the type variable (mean or standard deviation), and the axis (X, Y or Z).

```r
names(tidy_data[,67:68])
```

```
## [1] "V67" "V68"
```


##Sources
I primarily used the README.txt and features_info.txt from the UCI HAR Dataset The data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Annex
The following code was used in this codebook using the echo=FALSE attribute.

```r
setwd("/Users/nataliacarrizosa/Documents/GettingDataCoursera/CourseProject")
tidy_data <- read.table("tidy_data.txt")
```
