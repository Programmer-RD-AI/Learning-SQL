import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="SA",
  password="Ranuga D 2008"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM ")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)
