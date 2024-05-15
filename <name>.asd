(defsystem "<name>"
  :long-name "<name>"
  :version "0.0.1"
  :author "Tareif Al-Zamil"
  :maintainer "Tareif Al-Zamil"
  :mailto "root@tareifz.me"
  :license "GPL-3+"
  :homepage "https://github.com/tareifz/<name>"
  :bug-tracker "https://github.com/tareifz/<name>/issues"
  :source-control "https://github.com/tareifz/<name>.git"
  :class :package-inferred-system
  :pathname "src"
  :depends-on ("alexandria"
               "serapeum"
               "arrow-macros"
               "<name>/main")
  :description "<description>"
  :long-description "<description>"
  :in-order-to ((test-op (test-op "<name>/tests"))))

(defsystem "<name>/tests"
  :author "Tareif Al-Zamil"
  :license "GPL-3+"
  :depends-on ("<name>"
               "rove")
  :pathname "tests"
  :components ((:file "main"))
  :description "Test system"
  :perform (test-op (op c) (symbol-call :rove :run c)))
