# FROM thyrlian/android-sdk-vnc -- opcao suporta VNC
# https://github.com/thyrlian/AndroidSDK
# FROM thyrlian/android-sdk - imagem funcionando ok

FROM alexandreoda/adb-fastboot

RUN echo yes | sdkmanager "platform-tools" "platforms;android-24" "emulator"
RUN echo yes | sdkmanager "system-images;android-24;default;armeabi-v7a"
RUN echo no | avdmanager create avd --force -n Pixel3Arm -k "system-images;android-24;default;armeabi-v7a" --device 18

#COPY /home/weslen/.ssh/id_rsa.pub /root/.ssh/authorized_keys

RUN emulator -avd Pixel3Arm -noaudio -no-boot-anim -gpu off -no-window &

#EXPOSE 5037