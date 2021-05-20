pipeline {
    agent any

   //  Checking Environment Variables
 
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                    echo "JAVA_HOME = ${JAVA_HOME}"
                '''
            }
        }

        stage ('git clone') {
            steps {
              git branch: 'master', url: "https://github.com/sainath028/vprofile-repo.git" 
            }
        }
        stage ('Build') {
            steps {
                sh "mvn clean install -DskipTests"
            }
        }
        stage ('ansible') {
            steps {
                sh "ansible-playbook -i ./inventory ping.yaml"
            }
        }
        stage ('deployment') {
            steps {
                sh "ansible-playbook -i ./inventory deployment.yaml "
            }
        }        
    }
}
