;;; packages.el --- spec-ops layer packages file for Spacemacs.

(defconst spec-ops-packages
  '(
    (terraform-mode :location elpa)
    (terraform-doc :location elpa)
    (company-terraform :location elpa)
    (chef-mode :location elpa)
    (jsonnet-mode :location elpa)
  )
)


(defun spec-ops/init-jsonnet-mode ()
  (use-package jsonnet-mode 
  :config
  (defun jsonnet-reformat-buffer ()
    "Reformat entire buffer using the Jsonnet format utility."
    (interactive)
    (call-process-region (point-min) (point-max) "jsonnetfmt" t t nil "-"))
  )
)

(defun spec-ops/init-terraform-mode ()
  (use-package terraform-mode))

(defun spec-ops/init-terraform-doc ()
  (use-package terraform-doc))

(defun spec-ops/init-company-terraform ()
  (use-package company-terraform))

(defun spec-ops/init-chef-mode ()
  (use-package chef-mode))

