pipeline{
	agent{
	   label 'LinuxAgent4'
	}	
    
    environment{
    // PATH = "C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Users\\LENOVO\\Documents\\AllData\\DevOps\\apache-maven-3.6.3\\bin;C:\\Program Files\\Java\\jdk1.8.0_281\\bin;C:\\Program Files\\Git\\cmd"
	PATH = "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/share/maven/bin"  
    }
    
    stages{             
         stage('Compile the code'){		 
            steps{
	       echo "version of the pipeline: ${params.VERSION}"	    
               withMaven(maven: 'MAVEN_3.6'){
                   //bat 'mvn clean compile'
		     sh 'mvn clean compile'
               }
            }
        }
       stage('Test and Build'){
	        parallel{
		        stage('Test the code'){	          
		            steps{
		                withMaven(maven: 'MAVEN_3.6'){
		                   //bat 'mvn test'
				     sh 'mvn test'
		                }
		            }
		        }
		         stage('Build the code'){
		            steps{
		                withMaven(maven: 'MAVEN_3.6'){
		                  // bat 'mvn install'
				     sh 'mvn install'
		                }
		            }
		        }        
	         } //end of parallel block
	     }//end of parent stage block
    }
    
}
