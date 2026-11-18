# Histórico de melhorias — Ferramenta DUIMP · Reforma Tributária

Versão atual: **0.7.0**. Numeração: MINOR = função nova; PATCH = melhoria ou correção de função existente; MAJOR = mudança que quebra a compatibilidade dos arquivos exportados.

## 0.7.0 — Histórico de melhorias e versão visível (18/11/2026 11:32:00)

- **Novo:** Aba “Melhorias” com a linha do tempo de versões (data, hora, tipo e descrição de cada mudança), filtro por tipo e busca.
- **Novo:** Versão da ferramenta no cabeçalho, no rodapé e na guia de conferência impressa; aviso de novidades quando há versão que você ainda não viu.
- **Novo:** Arquivo CHANGELOG.md gerado a partir do mesmo cadastro de versões, publicado junto da ferramenta.
- **Melhoria:** O JSON exportado e o evento de cálculo no registro de correções passam a informar a versão da ferramenta usada.

## 0.6.0 — Registro de correções (18/11/2026 11:23:08, commit ff7a9d2)

- **Novo:** Aba “Correções”: cada alteração confirmada fica registrada com data e hora (Brasília), campo, item, valor anterior, novo valor e origem.
- **Novo:** Eventos do processo no registro: item adicionado/duplicado/removido, importações, cálculo pela API, guia emitida, envio registrado ou desfeito.
- **Novo:** Anotação livre do motivo da correção, filtro por tipo, busca e exportação em CSV.
- **Melhoria:** Atalho “correções” em cada linha do histórico, indicador no dashboard e anexo com as últimas 25 correções na guia de conferência.
- **Melhoria:** Dez guias de exemplo passam a trazer correções e eventos de exemplo.

## 0.5.0 — Valores e percentuais no padrão brasileiro (18/11/2026 11:13:23, commit 8185404)

- **Melhoria:** Valores monetários como R$ 1.111,11 e percentuais como 11,11% em campos, tabelas, guias, gráficos e dashboard.
- **Melhoria:** Campos reformatam ao sair e aceitam “1.111,11”, “R$ 1.111,11”, “11,11%” e “USD 2.000,00”; valores em moeda estrangeira exibem o código da moeda.
- **Correção:** “1.111” sem vírgula passa a ser lido como mil cento e onze, e não como 1,111.

## 0.4.0 — Histórico de guias, busca e dashboard (18/11/2026 10:53:38, commit 70515aa)

- **Novo:** Histórico de guias com situações Rascunho, Calculada, Guia emitida e Enviada (marcação manual com protocolo e data).
- **Novo:** Busca sem acento (importador, CNPJ, nº da DUIMP, NCM, descrição, município, protocolo) e filtros por situação, UF, período e valor.
- **Novo:** Dashboard de movimentação: indicadores, valor por mês, CBS e IBS por mês, situação, UF, NCMs e importadores, com tooltip, tabela e modo escuro.
- **Novo:** Dez guias de exemplo com dados fictícios e cálculo ilustrativo, e exportação/importação do histórico (JSON e CSV).

## 0.3.0 — Pendências clicáveis e uso sem depender da API (18/11/2026 10:37:49, commit b646fba)

- **Correção:** As pendências de preenchimento passaram a aparecer em destaque neutro e cada uma leva direto à aba, ao item e ao campo.
- **Correção:** UF e município continuam preenchíveis quando a API está dormindo (lista padrão de UFs; município por nome ou código IBGE).
- **Novo:** Botão para carregar uma DUIMP de exemplo fictícia e marcação dos campos inválidos ao calcular.

## 0.2.0 — Consulta de CNPJ e CEP (18/11/2026 10:26:37, commit b8a25aa)

- **Novo:** Consulta de CNPJ na BrasilAPI: razão social, endereço e situação cadastral do importador e do adquirente.
- **Novo:** Consulta de CEP no ViaCEP: define UF e município (IBGE) do local da operação de consumo.
- **Melhoria:** UF e município do local de consumo sugeridos pelo endereço do importador.

## 0.1.0 — Versão inicial (18/11/2026 10:20:34, commit 3a2239b)

- **Novo:** Identificação da DUIMP, itens com NCM, valores e tributos da base, CST/cClassTrib pelo fundamento legal, Imposto Seletivo e tributação regular.
- **Novo:** Cálculo de CBS, IBS e IS pela API da Receita Federal, com memória de cálculo.
- **Novo:** Importação e exportação (JSON, CSV de itens e payload da API) e rascunho automático no navegador.
- **Novo:** Guia de conferência e ficha da guia de taxa Anvisa para impressão ou PDF; publicação na mesma origem da API (Render).
