# Anuvaadya(अनुवाद्य) - Instrumental music translation
### Course Project for Automatic Speech Recognition(CS 753), Autumn 2019, CSE, IIT Bombay.
Implemented music translation from one instrument to another, with the main goal of training the AI to translate Indian instruments like the Tabla(तबला) and the Mridangam(मृदंग) to and from other instruments using two approaches:
1. A WaveNet Autoencoder heavily based on [A Universal Music Translation Network](https://arxiv.org/abs/1805.07848). This approach only requires audio recordings for a given instrument and no parallel recordings in two instruments or note transcriptions are required, making it especially suited for instruments with less or no parallel data.
2. A simple LSTM encoder-decoder based network with attention and a domain confusion network (inspired from the previous paper) that is trained more easily(since it is simpler). 

Note: instrumental-music-translation/wavenet-based-autoencoder/music-translation-master is taken from the [official implementation](https://github.com/facebookresearch/music-translation) with modifications relevant to our project, set as `setup_colab.sh`.

P.S. The project title Anuvaadya(अनुवाद्य) is a pun on the Sanskrit(संस्कृत) words अनुवाद(translation) and वाद्य(instrumental), literally translating to instrumental translation!