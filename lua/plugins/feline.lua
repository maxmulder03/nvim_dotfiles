return {
    'feline-nvim/feline.nvim',
    branch = '0.5-compat',
    opts = {},
    config = function(_, opts)
      require('feline').setup()
      require('feline').winbar.setup()
    end
}
