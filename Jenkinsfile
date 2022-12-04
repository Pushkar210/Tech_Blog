 pipeline {

    agent any

    tools {
        terraform 'terraform'
   //maven 'maven'

    }

    stages {
        // stage('SonarQube analysis') {



        //     environment {



        //         SCANNER_HOME = tool 'Sonar'



        //     }



        //     steps {



        //         withSonarQubeEnv(credentialsId: 'd789c80c-a358-4e6d-b56c-fdada33ca1e6', installationName: 'SonarQube') {



        //             sh ''' $SCANNER_HOME/bin/sonar-scanner \



        //         -Dsonar.sources=. '''



        //         }



        //     }



        // }





        stage('Terraform Init') {



            steps {



                sh label: '', script: 'terraform init'



            }



        }



        stage('Terraform Plan') {



            steps {



                sh label: '', script: 'terraform plan'



            }



        }



        stage('Terraform Apply') {



            steps {



                echo 'Terraform action from the parameter is --->destroy'



                sh label: '', script: 'terraform destroy --auto-approve'



                echo 'Terraform action from the parameter is --->apply'



                sh label: '', script: 'terraform apply --auto-approve'



            }



        }



    }



}