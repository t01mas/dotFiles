local logo = [[
   |\---/|                
   | ,_, |                
    \_`_/-..----.   T01mas
 ___/ `   ' ,""+ \  Nvim  
(__...'   __\    |`.___.';
 (_,...'(_,.`__)/'.....+  
]]

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = logo,
        },
      },
    },
  },
}
