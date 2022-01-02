#=================== AUDIO =======
import torch
import torchaudio
#=================== AUDIO =======

#=================== Fungsi Fungsi =======
from cnn import CNNNetwork
from USB import UrbanSoundDataset
from train import AUDIO_DIR, ANNOTATIONS_FILE, SAMPLE_RATE, NUM_SAMPLES
from suara import Suara
#=================== Fungsi Fungsi =======

#=================== FIREBASE =======
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
#=================== FIREBASE =======

#=================== MFCC =======
import librosa
import librosa.display
import IPython.display as ipd
import matplotlib.pyplot as plt
import numpy as np
#=================== MFCC =======

class_mapping = [
    "No Wheezing Detection",
    "BRONCHIECTASIS",
    "Bronchiolitis",
    "HEALTY",
    "PNEUMONIA",
    "URTI",
]

def predict(model, input, target, class_mapping):
    model.eval()
    with torch.no_grad():
        predictions = model(input)
        # Tensor (1, 10) -> [ [0.1, 0.01, ..., 0.6] ]
        predicted_index = predictions[0].argmax(0)
        predicted = class_mapping[predicted_index]
        expected = class_mapping[target]
    return predicted, expected


if __name__ == "__main__":
    # load back the model
    cnn = CNNNetwork()
    state_dict = torch.load("model.pth")
    cnn.load_state_dict(state_dict)

    # load urban sound dataset dataset
    mel_spectrogram = torchaudio.transforms.MelSpectrogram(
        sample_rate=SAMPLE_RATE,
        n_fft=1024,
        hop_length=512,
        n_mels=64
    )

    tebak ="/home/fawzi/Music/codingdialat/audio/output.wav"

    usd = UrbanSoundDataset(ANNOTATIONS_FILE,
                            AUDIO_DIR,
                            mel_spectrogram,
                            SAMPLE_RATE,
                            NUM_SAMPLES,
                            "cpu")
    ###########3
    dus = Suara(ANNOTATIONS_FILE,
                            tebak,
                            mel_spectrogram,
                            SAMPLE_RATE,
                            NUM_SAMPLES,
                            "cpu")
    signal = dus[0][0]
    ##3333
    # get a sample from the urban sound dataset for inference


    input = signal
    target = usd[0][1] # [batch size, num_channels, fr, time]
    input.unsqueeze_(0)

    # make an inference
    predicted, expected = predict(cnn, input, target,
                                  class_mapping)
    print(input)
    print(f"Predicted: '{predicted}'")

    #=====  MFCC =======
    audio_file = tebak ="/home/fawzi/Music/codingdialat/audio/output.wav"
    signal, sr = librosa.load(audio_file)
    mfccs = librosa.feature.mfcc(y=signal, n_mfcc=13, sr=sr)
    plt.figure(figsize=(25, 10))
    librosa.display.specshow(mfccs,
                             x_axis="time",
                             sr=sr)
    plt.colorbar(format="%+2.f")
    plt.savefig('3.png')
    image = '3.png'

    storage.child(image).put(image)
    url_gambar = storage.child("3.png").get_url(token="")
    # =====  MFCC =======

    urutan = "orang pertama"
    data={"urutan":urutan,"prediksi":predicted, "url_gambar":url_gambar}
    db.child().update(data)
