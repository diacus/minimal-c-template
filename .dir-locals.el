((c-mode . (
	    (eval . (setq-local flycheck-clang-include-path
				(list (expand-file-name "include" default-directory))))
	    (eval . (setq-local flycheck-gcc-include-path
				(list (expand-file-name "include" default-directory))))
	    (eval . (setq-local projectile-project-compilation-cmd
				"/bin/sh ./compile.sh"))))
 (nil . ((eval . (dap-register-debug-template
		  "structures::Run Configuration"
		  (list :type "cppdbg"
			:request "launch"
			:name "structures:Run configuration"
			:MIMode "gdb"
			:program (expand-file-name "main" default-directory)
			:cwd default-directory))))))
