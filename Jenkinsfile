pipeline {
	agent any

	stages {
		stage ('Check server health') {
			steps {
				sh \"curl -k -i -w '%{http_code}' -X GET https://conjur-master/health\"
			}
		}
		stage ('Create Host') {
			steps {
				sh 'chmod +x create_host.sh && ./create_host.sh'
			}
		}
	}
}