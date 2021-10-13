# 2021 数学建模模板

## 使用方法

- Word文档给为自己的信息 –> 导出命名为**titlepage.pdf**到当前文件夹

- Latex文件名改为自己的队伍号

- VSCode 个性化配置

F1 –> 输入Open Settings（Json），添加以下配置，保存，重启

```json

    // "latex-workshop.view.pdf.viewer": "external",
    // Latex workshop
    "latex-workshop.latex.tools": [
            {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "%DOC%"
            ]
            },
            {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
                ]
            },          
            {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
            ]
            },
            {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
            "%DOCFILE%"
            ]
            }
        ],
    "latex-workshop.latex.recipes": [
    
            {
            "name": "xelatex",
            "tools": [
            "xelatex"
                        ]
                    },
            {
            "name": "latexmk",
            "tools": [
            "latexmk"
                        ]
            },

            {
            "name": "pdflatex -> bibtex -> pdflatex*2",
            "tools": [
            "pdflatex",
            "bibtex",
            "pdflatex",
            "pdflatex"
                        ]
            }
        ],
    "latex-workshop.view.pdf.viewer": "tab",  
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux",
        "*.bbl",
        "*.blg",
        "*.idx",
        "*.ind",
        "*.lof",
        "*.lot",
        "*.out",
        "*.toc",
        "*.acn",
        "*.acr",
        "*.alg",
        "*.glg",
        "*.glo",
        "*.gls",
        "*.ist",
        "*.fls",
        "*.log",
        "*.fdb_latexmk"
        ],
        "explorer.confirmDelete": false
    

```

- 左侧栏TEX --> BUILD --> Recipe: xelatex
  😊 Done！