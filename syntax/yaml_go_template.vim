" ~/.config/nvim/syntax/yaml_go_template.vim
if exists("b:current_syntax")
  finish
endif

" Define regions for Go template syntax within YAML
syntax region yamlTemplate start=/{{/ end=/}}/ contains=@NoSpell keepend
syntax region yamlTemplateIf start=/{{-?\s*if\s/ end=/}}/ contains=@NoSpell keepend
syntax region yamlTemplateElse start=/{{-?\s*else\s/ end=/}}/ contains=@NoSpell keepend
syntax region yamlTemplateEnd start=/{{-?\s*end\s/ end=/}}/ contains=@NoSpell keepend
syntax region yamlTemplateRange start=/{{-?\s*range\s/ end=/}}/ contains=@NoSpell keepend
syntax region yamlTemplateWith start=/{{-?\s*with\s/ end=/}}/ contains=@NoSpell keepend

let b:current_syntax = "yaml_go_template"
