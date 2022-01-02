import  pyrebase
config = {
    "apiKey": "AIzaSyDorWeHKtoOWZHS2evQCUBil2vPd9LDI3Y",
    "authDomain": "escaped-36a70.firebaseapp.com",
    "projectId": "escaped-36a70",
    "databaseURL" : 'https://escaped-36a70-default-rtdb.firebaseio.com/',
    "storageBucket": "escaped-36a70.appspot.com",
    "messagingSenderId": "1039181483210",
    "appId": "1:1039181483210:web:5188d8b4115e3efdbd7833",
    "measurementId": "G-6GHZHG039J"
}
firebase = pyrebase.initialize_app(config)
storage = firebase.storage()
db = firebase.database()
auth = firebase.auth()


url = storage.child("1.png").get_url('idToken')
print(url)