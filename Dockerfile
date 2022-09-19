#FROM ubuntu:18.04
#FROM ubuntu:20.04
#FROM ubuntu:22.10
FROM debian

ENV DEBIAN_FRONTEND noninteractive
ENV QTWEBENGINE_DISABLE_SANDBOX=1

COPY . /home/jose/Ejemplo_INVAP
WORKDIR /home/jose/Ejemplo_INVAP

RUN apt-get update &&\ 
 apt-get install --no-install-recommends -y build-essential &&\ 
 apt-get install --no-install-recommends -y qtdeclarative5-dev &&\ 
 apt-get install --no-install-recommends -y libqt5opengl5-dev &&\ 
 apt-get install --no-install-recommends -y qtbase5-dev &&\  
  apt-get install --no-install-recommends -y gcc &&\ 
   apt-get install --no-install-recommends -y g++ &&\ 
    apt-get install --no-install-recommends -y make &&\ 
     #apt-get install -y cmake-qt-gui &&\ 
      apt-get install --no-install-recommends -y libqt5webenginewidgets5 &&\ 
       apt-get install --no-install-recommends -y qtwebengine5-dev &&\ 
   #      apt-get install -y qtwebview5-doc &&\ 
         apt-get install --no-install-recommends -y libqt5quick5 &&\ 
          apt-get install --no-install-recommends -y libqt5quickcontrols2-5 &&\
           apt-get install --no-install-recommends -y libqt5quickwidgets5 &&\
            apt-get install --no-install-recommends -y libqt5quicktemplates2-5 &&\ 
             apt-get install --no-install-recommends -y libqt5quickcontrols2-5 &&\ 
             apt-get install --no-install-recommends -y libqt5webview5 &&\ 
              apt-get install --no-install-recommends -y qml-module-qtquick-controls2 &&\ 
               apt-get install --no-install-recommends -y qml-module-qtwebview &&\
                apt-get install --no-install-recommends -y qml-module-qtwebengine &&\ 
                 apt-get install --no-install-recommends -y qml-module-qtwebsockets &&\ 
                  apt-get install --no-install-recommends -y qml-module-qtwebkit &&\ 
                  apt-get install --no-install-recommends -y qtcreator &&\ 
                  apt-get install --no-install-recommends -y qml-module-qtquick-dialogs &&\ 
                 apt-get install --no-install-recommends -y qttools5-dev-tools
                                   
RUN qmake && make



CMD [ "./Ejemplo_INVAP" ]
