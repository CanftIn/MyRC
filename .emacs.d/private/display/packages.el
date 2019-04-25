;;; Display Layer -*- lexical-binding: t; -*-

(setq display-packages
      '(;; Owned packages
        ;;pretty-mode
        (prettify-utils :location (recipe :fetcher github
                                          :repo "Ilazki/prettify-utils.el")) 
        ;; Personal display-related packages
        (pretty-code     :location local)
        ;;(pretty-fonts    :location local)
        ))
;;;; Pretty-mode

;;(defun display/init-pretty-mode ()
;;  ;; I *only* use greek letter replacements at the moment.
;;  ;; However, I go back and forht on whether to use nil-like <-> emptyset.
;;  ;; I currently have it *enabled*. Uncomment the deactivation to remove it.
;;
;;  (use-package pretty-mode
;;    :config
;;    (progn
;;      (global-pretty-mode t)
;;
;;      (pretty-deactivate-groups
;;       '(:equality :ordering :ordering-double :ordering-triple
;;                   :arrows :arrows-twoheaded :punctuation
;;                   :logic :sets
;;                   ;; :nil
;;                   ))
;;      (pretty-activate-groups
;;       '(:greek)))))

(defun display/init-prettify-utils ()
  (use-package prettify-utils))

(defun display/init-pretty-code ()
  (use-package pretty-code
    :config
    (progn
      (pretty-code-add-hook 'scheme-mode-hook '((:def "defun")
                                                (:lambda "lambda")))
      (pretty-code-add-hook 'emacs-lisp-mode-hook '((:def "defun")
                                                    (:lambda "lambda")))
      (pretty-code-add-hook 'hy-mode-hook         '((:def "defn")
                                                    (:lambda "fn")))
      (pretty-code-add-hook 'python-mode-hook     '((:def "def")
                                                    (:lambda "lambda")
                                                    (:in "in")
                                                    (:and "and")
                                                    (:or "or")
                                                    (:not-in "not-in")
                                                    )))))

;;;; Pretty-fonts

;;(defun display/init-pretty-fonts ()
;;  (use-package pretty-fonts
;;    :config
;;    ;; !! This is required to avoid segfault when using emacs as daemon !!
;;    (spacemacs|do-after-display-system-init
;;     (pretty-fonts-add-hook 'prog-mode-hook pretty-fonts-fira-code-alist)
;;     (pretty-fonts-add-hook 'org-mode-hook  pretty-fonts-fira-code-alist)
;;
;;     (pretty-fonts-set-fontsets-for-fira-code)
;;     (pretty-fonts-set-fontsets
;;      '(;; All-the-icons fontsets
;;        ("fontawesome"
;;         ;;                         
;;         #xf07c #xf0c9 #xf0c4 #xf0cb #xf017 #xf101)
;;
;;        ("all-the-icons"
;;         ;;    
;;         #xe907 #xe928)
;;
;;        ("github-octicons"
;;         ;;                               
;;         #xf091 #xf059 #xf076 #xf075 #xe192  #xf016 #xf071)
;;
;;        ("material icons"
;;         ;;              
;;         #xe871 #xe918 #xe3e7  #xe5da
;;         ;;              
;;         #xe3d0 #xe3d1 #xe3d2 #xe3d4))))))

