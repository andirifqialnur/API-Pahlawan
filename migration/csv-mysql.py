import csv
import mysql.connector
from asyncore import read

#koneksi mysql
mysql = mysql.connector.connect(
	host='localhost',
	password='', newline
	user='root',
	database='db_pahlawan')
mysqlCursor = mysql.cursor()

#buka file 
with open('pahlawan-wikipedia.csv', newline='') as csvfile:
	#baca isi file
	reader = csv.reader(csvfile, delimiter=',', quotechar='"')
	next(reader)
	#jabarkan data di setiap barisnya
	for row in reader:
		# print(row[1])
		nama = row[0]
		daerah_lahir = row[1]
		tahun_lahir = row[2]
		daerah_wafat = row[3]
		tahun_wafat = row[4]
		tahun_penetapan = row[5]

		query = "INSERT INTO data_pahlawan (nama, daerah_lahir, tahun_lahir, daerah_wafat, tahun_wafat, tahun_penetapan) VALUES('"+nama+"', '"+daerah_lahir+"', "+tahun_lahir+", '"+daerah_wafat+"', "+tahun_wafat+", "+tahun_penetapan+")"
		print(query)

		mysqlCursor.execute(query)
		mysql.commit()