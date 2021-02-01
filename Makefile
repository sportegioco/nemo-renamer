NEMO_SCRIPTS_DIR = "$(HOME)/.local/share/nemo-renamer"

build:
	./scripts/genmo.py po/ mo/
	chmod +x nemo-renamer.py

localinstall: build uninstall
	mkdir -p $(NEMO_SCRIPTS_DIR)/.rdata/po
	cp -Rfv mo/* $(NEMO_SCRIPTS_DIR)/.rdata/po
	cp -fv nemo-renamer.py $(NEMO_SCRIPTS_DIR)/Renamer
	dconf write  '/org/gnome/nemo/preferences/bulk-rename-tool' "b'$(NEMO_SCRIPTS_DIR)/Renamer'"

uninstall:
	rm -rfv $(NEMO_SCRIPTS_DIR)/.rdata
	rm -rfv $(NEMO_SCRIPTS_DIR)/Renamer
	dconf reset  '/org/gnome/nemo/preferences/bulk-rename-tool'

clean:
	rm -rfv mo
	rm -rfv .rope*
	find . -name '*.pyc' -exec rm '{}' \;

.PHONY: clean localinstall uninstall
