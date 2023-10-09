MKINITCPIO_PRESET=linux.preset
MKINITCPIO_CONF=mkinitcpio-recovery.conf
RECOVERY_CMD=recovery_cmdline

INSTALL_CMD="install -m0644 -o root -g root"
MKINICPIO_BIN=/usr/bin/mkinicpio

all: install

install:
	@echo "Installing recovery config presets"
	$(INSTALL_CMD) $(MKINITCPIO_PRESET) /etc/$(MKINITCPIO_PRESET)
	$(INSTALL_CMD) $(MKINITCPIO_CONF) /etc/$(MKINITCPIO_CONF)
	$(INSTALL_CMD) $(RECOVERY_CMD) /etc/kernel/$(RECOVERY_CMD)


run_mkinitcpio:
	@echo "Rebuilding mkinitcpio..."
	$(MKINITCPIO_BIN) -P
