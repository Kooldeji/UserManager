#Create Node as Base Image
FROM node
MAINTAINER kooldeji dejiakande33@gmail.com

#Create App directory in root
RUN mkdir UserManager 
RUN mkdir UserManager/user
RUN mkdir UserManager/tests

#Copy all files to app directory
COPY * ./UserManager/
COPY user/* ./UserManager/user/
COPY tests/* ./UserManager/tests/


#Make app directory the default directory where all commands run
WORKDIR UserManager

#Install Dependencies
RUN npm install

#Start the app at initialization of the container
CMD npm start