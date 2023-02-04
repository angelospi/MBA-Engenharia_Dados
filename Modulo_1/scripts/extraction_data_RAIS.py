import ftplib

ftp = ftplib.FTP("ftp.mtps.gov.br")
ftp.login()
ftp.cwd('pdet/microdados/RAIS/2020')
files = ftp.nlst()
for file in files:
    if file.endswith('.7z'):
        ftp.retrbinary('RETR ' + file, open('data/dados_rais/'+file, 'wb').write)
        print("Finalizado "+ file)
ftp.quit()