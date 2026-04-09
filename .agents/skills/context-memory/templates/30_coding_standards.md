# 📏 Padrões de Código

## Convenções de Nomenclatura

| Tipo | Padrão | Exemplo |
|------|--------|---------|
| Componentes | PascalCase | `UserProfile.tsx` |
| Hooks | camelCase com `use` | `useAuth.ts` |
| Services | camelCase | `authService.ts` |
| Tipos/Interfaces | PascalCase com `I` ou `T` | `IUser`, `TResponse` |
| Constantes | UPPER_SNAKE_CASE | `API_BASE_URL` |
| Arquivos CSS | kebab-case | `user-profile.css` |

## Estrutura de Componentes

```typescript
// 1. Imports
// 2. Types/Interfaces
// 3. Constantes
// 4. Componente (export default)
// 5. Sub-componentes (se necessário)
```

## Regras Obrigatórias

- [ ] Zero `any` — usar interfaces tipadas
- [ ] Zero `console.log` em produção
- [ ] Funções ≤ 50 linhas
- [ ] Nomes de funções = verbos claros
- [ ] DRY — sem lógica duplicada
- [ ] S.O.L.I.D. — responsabilidade única
- [ ] Separação UI / Lógica de negócio

## Git

| Tipo | Formato |
|------|---------|
| Commit | `tipo(escopo): mensagem` |
| Branch | `tipo/descricao-curta` |
| Tipos | `feat`, `fix`, `refactor`, `docs`, `chore`, `test` |
