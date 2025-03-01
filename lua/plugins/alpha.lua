return {
  "goolord/alpha-nvim",
  dependencies = {
    "kyazdani42/nvim-web-devicons",
  },
  config = function()
    local ok, alpha = pcall(require, 'alpha')
    if not ok then
      return
    end

    local theme_ok, theme = pcall(require, 'alpha.themes.startify')
    if not theme_ok then
      return
    end

    alpha.setup(theme.config)
  end
}
