# `macetada/plug`

Repositório para macetar o Plug com requests.

## Subindo o server

```bash
docker build -t plug .
docker run --rm -it -p 8085:8085 plug
```

ou:

```bash
docker pull ghcr.io/macetada/plug:main
docker run --rm -p 8085:8085 ghcr.io/macetada/plug:main
```

> Este procedimento deve ser feito numa máquina servidora ou num cluster.

## Pendências

- [ ] Acesso a I/O
- [ ] Acesso a banco de dados
