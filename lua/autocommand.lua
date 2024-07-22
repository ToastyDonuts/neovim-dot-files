local function set_docker_file_type()
  local function set_filetype(pattern, filetype)
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = pattern,
      command = "set filetype=" .. filetype,
    })
  end

  set_filetype({ "docker-compose.yml" }, "yaml.docker-compose")
end

set_docker_file_type()
