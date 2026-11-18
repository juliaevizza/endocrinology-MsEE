#This julia file is designed to handle querying the data sources
#The first order of business is creating a list of receptors to begin analysis
#http://endonet.sybig.de/receptor/list.jsf;jsessionid=d5e9abbe7b7c209c961a1946020c
#https://genexplain.com/endonet/ligand_receptor.html

#It is important to have the a comphrensive list even if we don't have don't 
#have binding data for them all so that we can see how much coverage our
#interaction data base has. Additionally, its worth training the ESM-2 encoder
#on all endocrine receptors even if they aren't all in the interaction 
#training data set. 

#Lead on interactions: https://www.guidetopharmacology.org/GRAC/ReceptorFamiliesForward?type=NHR
#Kd files values and tons of interacting partners! https://www.guidetopharmacology.org/GRAC/ObjectDisplayForward?objectId=620&familyId=96&familyType=NHR
#These even have agonist and antagonists. That should definitely be a data field

#https://www.ebi.ac.uk/chembl/
#


### this is a julia file encoding the process of querying and building the database. 

## begin wuth developing a list of endocrine receptors (endonet)
## beautifulsoup4

import BeautifulSoup

import pandas as pd

url =  "https://raw.githubusercontent.com/kevaldodiya/EndoNet-Compilation/refs/heads/main/Bioinformatics/Dataset/final_resolve_3.csv"
data = pd.read_csv(url)
print(data.head())