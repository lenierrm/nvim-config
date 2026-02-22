return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = "cd app && npm install",
	config = function()
		-- ==================================================
		-- CONFIGURACIÓN COMPLETA DE MARKDOWN PREVIEW
		-- ==================================================

		-- 1. COMPORTAMIENTO BÁSICO
		vim.g.mkdp_auto_start = 0 -- Iniciar automáticamente al abrir markdown (0=no, 1=sí)
		vim.g.mkdp_auto_close = 1 -- Cerrar preview al salir del buffer (0=no, 1=sí)
		vim.g.mkdp_refresh_slow = 0 -- Actualizar en tiempo real (0=sí, 1=solo al guardar)
		vim.g.mkdp_command_for_global = 0 -- Usar comandos globales (0=no, 1=sí)
		vim.g.mkdp_open_to_the_world = 0 -- Abrir a internet (0=solo localhost, 1=todas las interfaces)
		vim.g.mkdp_open_ip = "" -- IP específica (vacío = localhost)
		vim.g.mkdp_port = "" -- Puerto específico (vacío = puerto aleatorio)
		vim.g.mkdp_echo_preview_url = 1 -- Mostrar URL en la línea de comandos
		vim.g.mkdp_browserfunc = "" -- Función para abrir navegador (vacío = default)

		-- 2. APARIENCIA
		vim.g.mkdp_theme = "dark" -- Tema: 'dark' u 'light'
		vim.g.mkdp_markdown_css = "" -- Ruta a archivo CSS personalizado
		vim.g.mkdp_highlight_css = "" -- Ruta a CSS para resaltado de código
		vim.g.mkdp_page_title = "「${name}」" -- Formato del título de la página

		-- 3. NAVEGADOR ESPECÍFICO (descomenta el que uses)
		-- vim.g.mkdp_browser = 'firefox'              -- Para Firefox
		-- vim.g.mkdp_browser = 'google-chrome'        -- Para Chrome
		-- vim.g.mkdp_browser = 'brave-browser'        -- Para Brave
		-- vim.g.mkdp_browser = 'safari'                -- Para Safari (macOS)

		-- 4. COMBINAR ARCHIVOS (para incluir otros archivos markdown)
		vim.g.mkdp_combine_file = {} -- Ejemplo: { '/path/file1', '/path/file2' }

		-- 5. INTERVALOS DE ACTUALIZACIÓN (en milisegundos)
		vim.g.mkdp_refresh_interval = 100 -- Cada cuánto actualizar vista previa

		-- 6. RUTAS DE ARCHIVOS
		vim.g.mkdp_filetypes = { "markdown" } -- Tipos de archivo donde activar
		vim.g.mkdp_include_head = "" -- HTML extra en <head>
		vim.g.mkdp_include_body = "" -- HTML extra en <body>

		-- ==================================================
		-- ATAJOS DE TECLADO PERSONALIZADOS
		-- ==================================================

		-- Alternar preview (iniciar/detener)
		vim.keymap.set(
			"n",
			"<leader>mt",
			":MarkdownPreviewToggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle Markdown Preview" }
		)

		-- Detener preview
		vim.keymap.set(
			"n",
			"<leader>ms",
			":MarkdownPreviewStop<CR>",
			{ noremap = true, silent = true, desc = "Stop Markdown Preview" }
		)

		-- Iniciar preview (versión explícita)
		vim.keymap.set(
			"n",
			"<leader>mps",
			":MarkdownPreview<CR>",
			{ noremap = true, silent = true, desc = "Start Markdown Preview" }
		)

		-- También puedes crear un menú con which-key si lo usas
		-- Ejemplo: <leader>m p, <leader>m s, etc.
	end,
}
