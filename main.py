import socket

def sendFile():
        sock = socket.socket()
        addr="77.37.196.166"
        port=8000
        try:
            sock.connect((addr,port))
            sock.send("sahvdjgsva".encode("utf-8"))
            sock.close()
        except Exception as exc:
            print(exc)
            error = 'ошибка номер ....'
            print("ошибка с текстом, строка, линия и т.п. тип ошибки(что пишет компилятор): "+str(error))



sendFile()
while True:
	pass
