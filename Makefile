
build: components bootstrap
	@component build --dev

bootstrap: node_modules
	@grunt dist

node_modules:
	@npm install

components: component.json
	@component install --dev

clean:
	@rm -rf dist
	@rm -rf components
	@rm -rf build

.PHONY: clean build components
