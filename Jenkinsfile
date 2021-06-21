pipeline{

    agent any 
    environment {
    registry = "9985525347/spring-boot"
    registryCredential = 'dockerhub'
    dockerImage = ''
    }
    tools {
         maven 'mvn-3.8.1'
       }
    stages{
     stage('checkout') {
           steps{
                  git 'https://github.com/sharath-k-hub/spring-boot-maven-example-helloworld.git'
             }
           }
        stage('build') {
  
        steps {
             sh 'mvn clean package'
              }
            }
        stage('Building image') {
           steps{
              script {
                   dockerImage = docker.build registry + ":$BUILD_NUMBER"
                 }
               }
            }
       stage('Deploy Image') {
          steps{
             script {
               docker.withRegistry( '', registryCredential ) {
               dockerImage.push()
               }
            }
          }
        }
   }
}
