# skw_exemplo_html5
Aplicações de Exemplo html5 Sankhya


Biblioteca SankhyaJX-main

post(url, corpo, { headers }): Realiza requisições do tipo POST.

get(url, { headers }): Realiza requisições do tipo GET.

consultar(query): Realiza consultas ao serviço de banco de dados.

acionarBotao(dados, { tipo, idBotao, entidade, nomeProcedure }): Realiza o acionamento remoto de um botão de ação.

_salvar(dados, instancia, chavePrimaria): Salva o registro atual na base de dados (método interno).

salvar(dados, instancia, chavesPrimarias): Salva o registro atual na base de dados.

deletar(instancia, chavesPrimarias): Deleta um registro na base de dados.

removerFrame({ instancia, paginaInicial, ...opcoes }): Remove o frame da página de BI.

novaGuia(forcado = false): Abre a página atual em uma nova guia.

abrirPagina(resourceID, chavesPrimarias): Abre uma nova página.

fecharPagina(): Fecha a página atual.

getUrl(path): Retorna a URL atual da página.

getCookie(cookieName): Busca o valor do cookie desejado baseado no nome.

getArquivo(caminhoArquivo): Busca o conteúdo de um arquivo.
