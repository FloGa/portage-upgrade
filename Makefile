COMPLETIONS = $(addprefix completions/,$(wildcard emerge* upgrade*))

.PHONY: default
default: completions

.PHONY: completions
completions: $(COMPLETIONS)

$(COMPLETIONS): completion.inc.bash
	mkdir -p completions
	sed s/%%COMMAND%%/$(notdir $@)/ $< >$@

.PHONY: clean
clean:
	$(RM) -r completions
