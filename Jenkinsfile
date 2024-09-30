pipeline {
    agent any
    
    environment {
        PATH = "${env.PATH}:/usr/bin:/usr/local/bin"
        ruta = "/var/jenkins_home/workspace"
        repo = "https://github.com/FredyQuej/appMiWeb.git"
    }

    stages {
        stage("Validación de existencia") {
            steps {
                script {
                    env.fichero = fileExists("${ruta}/appMiWeb")
                }
            }
        }

        stage("Clonar repositorio") {
            when {
                expression { !env.fichero }
            }
            steps { 
                sh "git clone ${repo} ${ruta}/appMiWeb"
                sh "ls -la ${ruta}/appMiWeb"
            }
        }
        
        stage("Actualizar repositorio") {
            when {
                expression { env.fichero }
            }
            steps {
                echo "Actualizando repositorio"
                dir("${ruta}/appMiWeb") {
                    sh 'git pull origin main'
                    sh 'ls -la'
                }
            }
        }

        stage("Detener y destruir contenedores") {
            steps {
                echo "Deteniendo contenedores"
                sh 'docker stop mydb admindb web || true'
                echo "Destruyendo contenedores"
                sh 'docker rm mydb admindb web || true'
            }
        }
        
        stage("Desplegar Docker") {
            steps {
                echo "Iniciando deploy de app"
                dir("${ruta}/appMiWeb") {
                    sh 'ls -la'
                    sh 'docker --version'
                    sh 'docker-compose --version'
                    sh 'docker-compose up'
                }
            }
        }     
    }
}

