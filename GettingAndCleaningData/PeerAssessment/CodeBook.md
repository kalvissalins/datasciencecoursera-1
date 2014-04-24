<!DOCTYPE html>
<!-- saved from url=(0014)about:internet -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="x-ua-compatible" content="IE=9" >

<title>Code Book</title>

<style type="text/css">
body, td {
   font-family: sans-serif;
   background-color: white;
   font-size: 12px;
   margin: 8px;
}

tt, code, pre {
   font-family: 'DejaVu Sans Mono', 'Droid Sans Mono', 'Lucida Console', Consolas, Monaco, monospace;
}

h1 { 
   font-size:2.2em; 
}

h2 { 
   font-size:1.8em; 
}

h3 { 
   font-size:1.4em; 
}

h4 { 
   font-size:1.0em; 
}

h5 { 
   font-size:0.9em; 
}

h6 { 
   font-size:0.8em; 
}

a:visited {
   color: rgb(50%, 0%, 50%);
}

pre {	
   margin-top: 0;
   max-width: 95%;
   border: 1px solid #ccc;
   white-space: pre-wrap;
}

pre code {
   display: block; padding: 0.5em;
}

code.r, code.cpp {
   background-color: #F8F8F8;
}

table, td, th {
  border: none;
}

blockquote {
   color:#666666;
   margin:0;
   padding-left: 1em;
   border-left: 0.5em #EEE solid;
}

hr {
   height: 0px;
   border-bottom: none;
   border-top-width: thin;
   border-top-style: dotted;
   border-top-color: #999999;
}

@media print {
   * { 
      background: transparent !important; 
      color: black !important; 
      filter:none !important; 
      -ms-filter: none !important; 
   }

   body { 
      font-size:12pt; 
      max-width:100%; 
   }
       
   a, a:visited { 
      text-decoration: underline; 
   }

   hr { 
      visibility: hidden;
      page-break-before: always;
   }

   pre, blockquote { 
      padding-right: 1em; 
      page-break-inside: avoid; 
   }

   tr, img { 
      page-break-inside: avoid; 
   }

   img { 
      max-width: 100% !important; 
   }

   @page :left { 
      margin: 15mm 20mm 15mm 10mm; 
   }
     
   @page :right { 
      margin: 15mm 10mm 15mm 20mm; 
   }

   p, h2, h3 { 
      orphans: 3; widows: 3; 
   }

   h2, h3 { 
      page-break-after: avoid; 
   }
}

</style>





</head>

<body>
<h1>Code Book</h1>

<h2>Tidy Dataset</h2>

<p>The first dataset contains different mean and standard deviation measurements per subject and activity.</p>

<h3>Context Columns</h3>

<p>Subject</p>

<p>Activity</p>

<h3>Measure Columns</h3>

<p>tBodyAcc-mean()-X</p>

<p>tBodyAcc-mean()-Y</p>

<p>tBodyAcc-mean()-Z</p>

<p>tGravityAcc-mean()-X</p>

<p>tGravityAcc-mean()-Y</p>

<p>tGravityAcc-mean()-Z</p>

<p>tBodyAccJerk-mean()-X</p>

<p>tBodyAccJerk-mean()-Y</p>

<p>tBodyAccJerk-mean()-Z</p>

<p>tBodyGyro-mean()-X</p>

<p>tBodyGyro-mean()-Y</p>

<p>tBodyGyro-mean()-Z</p>

<p>tBodyGyroJerk-mean()-X</p>

<p>tBodyGyroJerk-mean()-Y</p>

<p>tBodyGyroJerk-mean()-Z</p>

<p>tBodyAccMag-mean()</p>

<p>tGravityAccMag-mean()</p>

<p>tBodyAccJerkMag-mean()</p>

<p>tBodyGyroMag-mean()</p>

<p>tBodyGyroJerkMag-mean()</p>

<p>fBodyAcc-mean()-X</p>

<p>fBodyAcc-mean()-Y</p>

<p>fBodyAcc-mean()-Z</p>

<p>fBodyAccJerk-mean()-X</p>

<p>fBodyAccJerk-mean()-Y</p>

<p>fBodyAccJerk-mean()-Z</p>

<p>fBodyGyro-mean()-X</p>

<p>fBodyGyro-mean()-Y</p>

<p>fBodyGyro-mean()-Z</p>

<p>fBodyAccMag-mean()</p>

<p>fBodyBodyAccJerkMag-mean()</p>

<p>fBodyBodyGyroMag-mean()</p>

<p>fBodyBodyGyroJerkMag-mean()</p>

<p>tBodyAcc-std()-X</p>

<p>tBodyAcc-std()-Y</p>

<p>tBodyAcc-std()-Z</p>

<p>tGravityAcc-std()-X</p>

<p>tGravityAcc-std()-Y</p>

<p>tGravityAcc-std()-Z</p>

<p>tBodyAccJerk-std()-X</p>

<p>tBodyAccJerk-std()-Y</p>

<p>tBodyAccJerk-std()-Z</p>

<p>tBodyGyro-std()-X</p>

<p>tBodyGyro-std()-Y</p>

<p>tBodyGyro-std()-Z</p>

<p>tBodyGyroJerk-std()-X</p>

<p>tBodyGyroJerk-std()-Y</p>

<p>tBodyGyroJerk-std()-Z</p>

<p>tBodyAccMag-std()</p>

<p>tGravityAccMag-std()</p>

<p>tBodyAccJerkMag-std()</p>

<p>tBodyGyroMag-std()</p>

<p>tBodyGyroJerkMag-std()</p>

<p>fBodyAcc-std()-X</p>

<p>fBodyAcc-std()-Y</p>

<p>fBodyAcc-std()-Z</p>

<p>fBodyAccJerk-std()-X</p>

<p>fBodyAccJerk-std()-Y</p>

<p>fBodyAccJerk-std()-Z</p>

<p>fBodyGyro-std()-X</p>

<p>fBodyGyro-std()-Y</p>

<p>fBodyGyro-std()-Z</p>

<p>fBodyAccMag-std()</p>

<p>fBodyBodyAccJerkMag-std()</p>

<p>fBodyBodyGyroMag-std()</p>

<p>fBodyBodyGyroJerkMag-std()</p>

<h2>Tidy Dataset 2</h2>

<p>The second dataset is an aggregation of the first dataset. If shows all measurements averaged by subject and activity.</p>

</body>

</html>

