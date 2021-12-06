# `macetada/plug`

Repositório para macetar o Elixir/Plug com requests.

## Subindo o server

```bash
docker build -t elixirplug .
docker run --rm -it -p 8069:8069 elixirplug
```

ou:

```bash
docker pull ghcr.io/macetada/elixirplug:main
docker run --rm -p 8069:8069 ghcr.io/macetada/elixirplug:main
```

> Este procedimento deve ser feito numa máquina servidora ou num cluster.

## Pendências

- [ ] Acesso a I/O
- [ ] Acesso a banco de dados
