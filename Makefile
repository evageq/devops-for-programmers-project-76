INV_FILE=inventory.ini
SETUP_PB=playbook_setup.yml
DEPLOY_PB=playbook.yml

help:
	@echo "Available targets:"
	@echo "  setup    - Run the setup playbook (uses ${SETUP_PB})"
	@echo "  deploy   - Run the deploy playbook (uses ${DEPLOY_PB})"
	@echo "  help     - Show this help message"

setup:
	@ansible-playbook -i ${INV_FILE} ${SETUP_PB}

deploy:
	@ansible-playbook -i ${INV_FILE} ${DEPLOY_PB}
