pipeline {
    agent any
    
    environment{
        fichero = fileExists file: "$ruta/jenkins" 
        ruta = "/home/jenkins/workspace"
        repo = "https://github.com/FredyQuej/appMiWeb.git"
      
    }

    stages {

        stage ("validación false"){
            when{expression {fichero=='false'}}
            steps{ 
                sh 'git clone $repo'
                sh 'ls -la'
            }
        }
        
        stage ("validación true"){
            when{expression {fichero=='true'}}
            steps{
                echo message: "clonando"
                dir ("$ruta/jenkins"){
                sh 'git pull'
                sh 'ls -la'   
                }
            }
        }

        stage ("destructiondocker"){
            steps{
            echo message: "Deteniendo contenedores"
            sh 'docker stop mydb admindb web'
            echo message: "destruyendo contenedores"
            sh 'docker rm mydb admindb web'
            }
        }
        
        stage ("dockerdeploy") {
            steps{
                echo message: "iniciando deploy de app"
                dir("$ruta/jenkins"){
                    sh 'ls -la'
                    sh 'docker-compose up -d'
                }
            }

        }     
    }
}
