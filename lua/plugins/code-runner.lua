return {
  "CRAG666/code_runner.nvim",
  keys = {
    {
      '<leader>r',
      '<cmd>RunCode<CR>'
    }
  },
  opts = {
    mode = 'float',
    float = {
      close_key = "q",
      border = "rounded",
    },
    filetype = {
      typescript = "node --no-warnings=ExperimentalWarning --loader ts-node/esm",
      java = {
        "cd $dir &&",
        "javac $fileName &&",
        "java $fileNameWithoutExt"
      },
      python = "python3 -u",
      rust = {
        "cd $dir &&",
        "rustc $fileName &&",
        "$dir/$fileNameWithoutExt"
      },
      c = function(...)
        local c_base = {
          "cd $dir &&",
          "gcc $fileName -o",
          "/tmp/$fileNameWithoutExt",
        }
        local c_exec = {
          "&& /tmp/$fileNameWithoutExt &&",
          "rm /tmp/$fileNameWithoutExt",
        }
        vim.ui.input({ prompt = "Add more args:" }, function(input)
          c_base[4] = input
          vim.print(vim.tbl_extend("force", c_base, c_exec))
          require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
        end)
      end,
    },
  },
}
