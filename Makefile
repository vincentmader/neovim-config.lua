nvim-setup:
	make coc-extensions
coc-extensions:
	cd bin && ./install_coc_plugins.sh
