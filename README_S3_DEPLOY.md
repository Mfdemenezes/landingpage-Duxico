# Instruções para Deploy no Amazon S3

## Arquivos Preparados para S3 Estático

Todos os arquivos foram corrigidos e otimizados para funcionar corretamente no Amazon S3 como website estático:

### Arquivos Principais:
- `index.html` - Página inicial
- `produtos.html` - Página de produtos
- `contato.html` - Página de contato (com formulário via mailto)
- `sobre.html` - Página sobre a empresa
- `charcutaria.html` - Página sobre charcutaria
- `404.html` - Página de erro personalizada
- `styles.css` - Estilos CSS completos
- `sitemap.xml` - Mapa do site atualizado
- `robots.txt` - Configuração para motores de busca

### Configurações Recomendadas para S3:

1. **Bucket Configuration:**
   - Habilitar "Static website hosting"
   - Index document: `index.html`
   - Error document: `404.html`

2. **Bucket Policy (público):**
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::seu-bucket-name/*"
        }
    ]
}
```

3. **CloudFront (Recomendado):**
   - Configurar CloudFront para melhor performance
   - Configurar cache headers
   - Certificado SSL/TLS

### Otimizações Implementadas:

1. **HTML Limpo:** Removido código duplicado e scripts desnecessários
2. **CSS Responsivo:** Estilos otimizados para todos os dispositivos
3. **SEO:** Meta tags apropriadas em todas as páginas
4. **Performance:** Código otimizado para carregamento rápido
5. **Acessibilidade:** Estrutura semântica correta
6. **Formulário de Contato:** Utiliza mailto para funcionar sem servidor

### Arquivos Removidos:
- Scripts JavaScript desnecessários
- Arquivos de backup antigos
- Dependências externas problemáticas

### Para Upload:
1. Fazer upload de todos os arquivos para o bucket S3
2. Configurar permissões públicas
3. Habilitar website estático
4. Configurar nome de domínio (opcional)
5. Configurar CloudFront (recomendado)

### Domínio Personalizado:
- Substitua "https://seudominio.com" no sitemap.xml e robots.txt pelo seu domínio real
- Configure Route 53 ou seu provedor de DNS para apontar para o S3/CloudFront

### Monitoramento:
- Configure CloudWatch para monitorar acessos
- Configure logs de acesso do S3 se necessário
