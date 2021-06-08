pipeline{
    agent{
        label 'WindowsAgent1'
    }
    
    stages{        
        stage('Compile the code'){
            steps{
               withMaven(maven: 'MAVEN_3.6'){
                   bat 'mvn clean compile'
               }
            }
        }
       
        stage('Test the code'){
            steps{
                withMaven(maven: 'MAVEN_3.6'){
                   bat 'mvn test'
                }
            }
        }
         stage('Build the code'){
            steps{
                withMaven(maven: 'MAVEN_3.6'){
                   bat 'mvn install'
                }
            }
        }        
        
    }
    
}