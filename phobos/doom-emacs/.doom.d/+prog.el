(use-package! python-black
  :demand t
  :after python
  :config

  (map! :map python-mode-map
        :localleader
        "b" #'python-black-buffer))

(add-hook! 'python-mode-hook #'python-black-on-save-mode)

(use-package! lsp-docker
  :after lsp-mode
  :config
  (setq lsp-docker-client-packages
        '(lsp-bash lsp-pyls))

  (setq lsp-docker-client-configs
        (list
         (list :server-id 'bash-ls :docker-server-id 'bashls-docker :server-command "bash-language-server start")
         (list :server-id 'pyls :docker-server-id 'pyls-docker :server-command "pyls")))

  (setq lsp-docker-path-mappings
        `((,(file-truename "~/Code") . "/Code")))

  (lsp-docker-init-clients
   :client-packages lsp-docker-client-packages
   :client-configs lsp-docker-client-configs
   :path-mappings lsp-docker-path-mappings))
