import csv
x=[]
y=[]
disty=[]
i=0
# opening the CSV file
with open(r'C:\django\CROP_MANAGEMENT_SYSTEM\crop\prediction_code.py', mode ='r')as file:

# reading the CSV file
    csvFile = csv.reader(file)
    print(csvFile)
    # displaying the contents of the CSV file
    for lines in csvFile:
        if i!=0:
            print(lines)
            print(len(lines))
            print(i)
            row=lines[0:7]
            x.append(row)
            y.append(lines[7])
            if lines[7] not in disty:
                disty.append(lines[7])
        i=i+1
yy=[]
for i in y:
    yy.append(disty.index(i))

# Run this program on your local python
# interpreter, provided you have installed
# the required libraries.

# Importing the required packages
import numpy as np

from sklearn.metrics import confusion_matrix
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
from sklearn.metrics import classification_report

X_train, X_test, y_train, y_test = train_test_split( x,y, test_size = 0.3, random_state = 100)
clf_entropy =  DecisionTreeClassifier(criterion = "gini",
            random_state = 100)

	
clf_entropy.fit(X_train, y_train)

y_pred = clf_entropy.predict(X_test)


print("Confusion Matrix: ",
        confusion_matrix(y_test, y_pred))
      
print ("Accuracy : ",
accuracy_score(y_test,y_pred)*100)
    
print("Report : ",
classification_report(y_test, y_pred))
def prediction(row):
    y_pred = clf_entropy.predict([row])
    return disty[y_pred[0]]

