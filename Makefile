INV_FILE=inventory.ini
MAIN_PLAYBOOK=playbook.yml

help:
	@echo "Available targets:"
	@echo "  setup    - Run the setup playbook (uses ${SETUP_PB})"
	@echo "  deploy   - Run the deploy playbook (uses ${DEPLOY_PB})"
	@echo "  help     - Show this help message"

setup:
	@ansible-playbook -i ${INV_FILE} --tags setup ${MAIN_PLAYBOOK}

deploy:
	@ansible-playbook -i ${INV_FILE} --tags deploy ${MAIN_PLAYBOOK}
