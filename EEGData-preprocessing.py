# -*- coding: utf-8 -*-
"""
Created on Thu May 27 10:01:45 2021

@author: alexi
"""


import os
import mne
from mne.preprocessing import (ICA, create_eog_epochs, create_ecg_epochs,
                               corrmap)
import argparse
import mne
import numpy as np
from scipy import io

#LOADING RAW EEG DATASET

raw = mne.io.Raw('C:/Users/alexi/Music/CS-Project/P01-raw.fif', preload=True, verbose=True).crop(1,6)
data, time = raw[:,:]





eog_evoked = create_eog_epochs(raw, ch_name='Fp1').average()
eog_evoked.apply_baseline(baseline=(None, -0.2))
eog_evoked.plot_joint()




ecg_evoked = create_ecg_epochs(raw, ch_name='Fp1').average()
ecg_evoked.apply_baseline(baseline=(None, -0.2))
ecg_evoked.plot_joint()


lowfilterdata = raw.copy()
lowfilterdata.load_data().filter(l_freq=1., h_freq=None)

ica = ICA(n_components=25, max_iter='auto', random_state=97)
ica.fit(lowfilterdata)

eog_indices, eog_scores = ica.find_bads_eog(raw, ch_name='Fp1')
ica.exclude = eog_indices

ecg_indices, ecg_scores = ica.find_bads_ecg(raw,ch_name='Fp1')
ica.exclude = ecg_indices

PreproData2 = raw.copy()
ica.apply(PreproData2)

PreproData2.plot(duration=15, n_channels=30)


events = mne.find_events(raw, stim_channel='STI 014', shortest_event=0)
print('event',events[:25])


PreproData = PreproData2.copy()
PeC1 = PreproData.pick_channels(['C1'])
data, time = PeC1[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeC1.txt',data)

PreproData = PreproData2.copy()
PeC3 = PreproData.pick_channels(['C3'])
data, time = PeC3[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeC3.txt',data)

PreproData = PreproData2.copy()
PeC5 = PreproData.pick_channels(['C5'])
data, time = PeC5[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeC5.txt',data)

PreproData = PreproData2.copy()
PeF1 = PreproData.pick_channels(['F1'])
data, time = PeF1[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeF1.txt',data)

PreproData = PreproData2.copy()
PeF3 = PreproData.pick_channels(['F3'])
data, time = PeF3[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeF3.txt',data)

PreproData = PreproData2.copy()
PeF5 = PreproData.pick_channels(['F5'])
data, time = PeF5[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeF5.txt',data)


PreproData = PreproData2.copy()
PeT7 = PreproData.pick_channels(['T7'])
data, time = PeT7[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeT7.txt',data)

PreproData = PreproData2.copy()
PeFT7 = PreproData.pick_channels(['FT7'])
data, time = PeFT7[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeFT7.txt',data)


PreproData = PreproData2.copy()
PeTP7 = PreproData.pick_channels(['TP7'])
data, time = PeTP7[:,:]
np.savetxt('C:/Users/alexi/Music/CS-Project/PeTP7.txt',data)







