###########  Server setup  START ##############################
#We are assuming, jenkins and tomcat both are running on same system.
We are using ec2-user.

#-> Use userdata.sh and Spin one EC2 instance in AWS
#Note - Open 8080 and 9090 port in security group


#Once EC2 up, copy startJenkins.sh in /local/apps/jenkins/ and execute it
chmod 755 /local/apps/jenkins/startJenkins.sh
/local/apps/jenkins/startJenkins.sh

#Open http://IP:8080 it should show tomcat admin page

#Open http://IP:9090/jenkins in another tab
#insert default admin password ---> /local/apps/jenkins/home/secrets/initialAdminPassword
#Install plugins
# skip user creation
# continue with given url

###########  Server setup  END ##############################
