# SWI-Prolog Container

See [PPA](https://www.swi-prolog.org/build/PPA.html) for details.

## SWI-Prolog on Alpine

Build and tag using:
```bash
docker build alpine -t royratcliffe/swi-prolog:alpine
```
It builds with the latest Alpine Linux and the latest SWI-Prolog, edge version. Alpine's APK installer requires access to two additional repositories for edge versions, testing and main. Prolog lives under testing but its crypto and SSL library dependencies reside under the main edge repository.
