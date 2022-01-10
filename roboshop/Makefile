Help:
	 @IFS=$$'\n' ; \
        help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
        for help_line in $${help_lines[@]}; do \
            IFS=$$'#' ; \
            help_split=($$help_line) ; \
            help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
            help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
            printf "%-15s %s\n" $$help_command $$help_info ; \
        done

git-pull:
	@echo -------+ Pulling Git Code +-------
	@git pull &>/dev/null

cart: git-pull ## Set up Cart Component
	@bash Components/cart.sh

catalogue: git-pull ## Set up Catalogue Component
	@bash Components/catalogue.sh

user: git-pull ## Set up user Component
	@bash Components/user.sh

shipping: git-pull ## Set up Shipping Component
	@bash Components/shipping.sh

payment: git-pull ## Set up Payment Component
	@bash Components/payment.sh

frontend: git-pull ## Set up Frontend Component
	@bash Components/frontend.sh

mysql: git-pull ## Set up Mysql Component
	@bash Components/mysql.sh

redis: git-pull ## Set up Redis Component
	@bash Components/redis.sh

rabbitmq: git-pull  ## Set up Rabbitmq Component
	@bash Components/rabbitmq.sh

mongodb:git-pull ## Set up Mongodb Component
	@bash Components/mongodb.sh