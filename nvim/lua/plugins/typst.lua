return {
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst", -- Cargar solo en archivos typst
    version = "1.*",
    build = function()
      require("typst-preview").update()
    end, -- Descarga el binario automáticamente
    config = function()
      require("typst-preview").setup({
        -- Abre el navegador automáticamente al iniciar
        open_auto = true,
        -- Muestra mensajes de error en nvim
        debug = false,
        -- Método de sincronización de scroll (muy útil)
        dependencies_bin = {
          ["tinymist"] = nil,
          ["websocat"] = nil,
        },
      })
    end,
  },
}
