DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-camlistore
VERSION =		latest
VERSION_ALIASES =
TITLE =			Camlistore
DESCRIPTION =		Camlistore
SOURCE_URL =		https://github.com/aimxhaisse/image-app-camlistore


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides

